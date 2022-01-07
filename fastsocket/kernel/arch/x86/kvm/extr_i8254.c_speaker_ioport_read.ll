; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_i8254.c_speaker_ioport_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_i8254.c_speaker_ioport_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_io_device = type { i32 }
%struct.kvm_pit = type { %struct.kvm*, %struct.kvm_kpit_state }
%struct.kvm = type { i32 }
%struct.kvm_kpit_state = type { i32, i32 }

@KVM_SPEAKER_BASE_ADDRESS = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_io_device*, i64, i32, i8*)* @speaker_ioport_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @speaker_ioport_read(%struct.kvm_io_device* %0, i64 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_io_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.kvm_pit*, align 8
  %11 = alloca %struct.kvm_kpit_state*, align 8
  %12 = alloca %struct.kvm*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.kvm_io_device* %0, %struct.kvm_io_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %15 = load %struct.kvm_io_device*, %struct.kvm_io_device** %6, align 8
  %16 = call %struct.kvm_pit* @speaker_to_pit(%struct.kvm_io_device* %15)
  store %struct.kvm_pit* %16, %struct.kvm_pit** %10, align 8
  %17 = load %struct.kvm_pit*, %struct.kvm_pit** %10, align 8
  %18 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %17, i32 0, i32 1
  store %struct.kvm_kpit_state* %18, %struct.kvm_kpit_state** %11, align 8
  %19 = load %struct.kvm_pit*, %struct.kvm_pit** %10, align 8
  %20 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %19, i32 0, i32 0
  %21 = load %struct.kvm*, %struct.kvm** %20, align 8
  store %struct.kvm* %21, %struct.kvm** %12, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @KVM_SPEAKER_BASE_ADDRESS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %63

28:                                               ; preds = %4
  %29 = call i32 (...) @ktime_get()
  %30 = call i64 @ktime_to_ns(i32 %29)
  %31 = trunc i64 %30 to i32
  %32 = lshr i32 %31, 14
  %33 = and i32 %32, 1
  store i32 %33, i32* %13, align 4
  %34 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %11, align 8
  %35 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %34, i32 0, i32 1
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %11, align 8
  %38 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 1
  %41 = load %struct.kvm*, %struct.kvm** %12, align 8
  %42 = call i32 @pit_get_gate(%struct.kvm* %41, i32 2)
  %43 = or i32 %40, %42
  %44 = load %struct.kvm*, %struct.kvm** %12, align 8
  %45 = call i32 @pit_get_out(%struct.kvm* %44, i32 2)
  %46 = shl i32 %45, 5
  %47 = or i32 %43, %46
  %48 = load i32, i32* %13, align 4
  %49 = shl i32 %48, 4
  %50 = or i32 %47, %49
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp ugt i64 %52, 4
  br i1 %53, label %54, label %55

54:                                               ; preds = %28
  store i32 4, i32* %8, align 4
  br label %55

55:                                               ; preds = %54, %28
  %56 = load i8*, i8** %9, align 8
  %57 = bitcast i32* %14 to i8*
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @memcpy(i8* %56, i8* %57, i32 %58)
  %60 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %11, align 8
  %61 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %60, i32 0, i32 1
  %62 = call i32 @mutex_unlock(i32* %61)
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %55, %25
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.kvm_pit* @speaker_to_pit(%struct.kvm_io_device*) #1

declare dso_local i64 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pit_get_gate(%struct.kvm*, i32) #1

declare dso_local i32 @pit_get_out(%struct.kvm*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

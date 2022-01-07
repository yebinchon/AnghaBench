; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_i8254.c_speaker_ioport_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_i8254.c_speaker_ioport_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_io_device = type { i32 }
%struct.kvm_pit = type { %struct.kvm*, %struct.kvm_kpit_state }
%struct.kvm = type { i32 }
%struct.kvm_kpit_state = type { i32, i32 }

@KVM_SPEAKER_BASE_ADDRESS = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_io_device*, i64, i32, i8*)* @speaker_ioport_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @speaker_ioport_write(%struct.kvm_io_device* %0, i64 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_io_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.kvm_pit*, align 8
  %11 = alloca %struct.kvm_kpit_state*, align 8
  %12 = alloca %struct.kvm*, align 8
  %13 = alloca i32, align 4
  store %struct.kvm_io_device* %0, %struct.kvm_io_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load %struct.kvm_io_device*, %struct.kvm_io_device** %6, align 8
  %15 = call %struct.kvm_pit* @speaker_to_pit(%struct.kvm_io_device* %14)
  store %struct.kvm_pit* %15, %struct.kvm_pit** %10, align 8
  %16 = load %struct.kvm_pit*, %struct.kvm_pit** %10, align 8
  %17 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %16, i32 0, i32 1
  store %struct.kvm_kpit_state* %17, %struct.kvm_kpit_state** %11, align 8
  %18 = load %struct.kvm_pit*, %struct.kvm_pit** %10, align 8
  %19 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %18, i32 0, i32 0
  %20 = load %struct.kvm*, %struct.kvm** %19, align 8
  store %struct.kvm* %20, %struct.kvm** %12, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = bitcast i8* %21 to i32*
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %13, align 4
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @KVM_SPEAKER_BASE_ADDRESS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %46

30:                                               ; preds = %4
  %31 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %11, align 8
  %32 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %31, i32 0, i32 1
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load i32, i32* %13, align 4
  %35 = ashr i32 %34, 1
  %36 = and i32 %35, 1
  %37 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %11, align 8
  %38 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.kvm*, %struct.kvm** %12, align 8
  %40 = load i32, i32* %13, align 4
  %41 = and i32 %40, 1
  %42 = call i32 @pit_set_gate(%struct.kvm* %39, i32 2, i32 %41)
  %43 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %11, align 8
  %44 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %43, i32 0, i32 1
  %45 = call i32 @mutex_unlock(i32* %44)
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %30, %27
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local %struct.kvm_pit* @speaker_to_pit(%struct.kvm_io_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pit_set_gate(%struct.kvm*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

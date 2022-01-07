; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_sbp2.c_complete_transaction.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_sbp2.c_complete_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32 }
%struct.sbp2_orb = type { i32, i32, i32 (%struct.sbp2_orb*, i32*)*, i32 }

@RCODE_COMPLETE = common dso_local global i32 0, align 4
@free_orb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_card*, i32, i8*, i64, i8*)* @complete_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @complete_transaction(%struct.fw_card* %0, i32 %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca %struct.fw_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.sbp2_orb*, align 8
  %12 = alloca i64, align 8
  store %struct.fw_card* %0, %struct.fw_card** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = bitcast i8* %13 to %struct.sbp2_orb*
  store %struct.sbp2_orb* %14, %struct.sbp2_orb** %11, align 8
  %15 = load %struct.fw_card*, %struct.fw_card** %6, align 8
  %16 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %15, i32 0, i32 0
  %17 = load i64, i64* %12, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.sbp2_orb*, %struct.sbp2_orb** %11, align 8
  %20 = getelementptr inbounds %struct.sbp2_orb, %struct.sbp2_orb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %27

23:                                               ; preds = %5
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.sbp2_orb*, %struct.sbp2_orb** %11, align 8
  %26 = getelementptr inbounds %struct.sbp2_orb, %struct.sbp2_orb* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  br label %27

27:                                               ; preds = %23, %5
  %28 = load %struct.sbp2_orb*, %struct.sbp2_orb** %11, align 8
  %29 = getelementptr inbounds %struct.sbp2_orb, %struct.sbp2_orb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @RCODE_COMPLETE, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %27
  %34 = load %struct.sbp2_orb*, %struct.sbp2_orb** %11, align 8
  %35 = getelementptr inbounds %struct.sbp2_orb, %struct.sbp2_orb* %34, i32 0, i32 3
  %36 = call i32 @list_del(i32* %35)
  %37 = load %struct.fw_card*, %struct.fw_card** %6, align 8
  %38 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %37, i32 0, i32 0
  %39 = load i64, i64* %12, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load %struct.sbp2_orb*, %struct.sbp2_orb** %11, align 8
  %42 = getelementptr inbounds %struct.sbp2_orb, %struct.sbp2_orb* %41, i32 0, i32 2
  %43 = load i32 (%struct.sbp2_orb*, i32*)*, i32 (%struct.sbp2_orb*, i32*)** %42, align 8
  %44 = load %struct.sbp2_orb*, %struct.sbp2_orb** %11, align 8
  %45 = call i32 %43(%struct.sbp2_orb* %44, i32* null)
  br label %51

46:                                               ; preds = %27
  %47 = load %struct.fw_card*, %struct.fw_card** %6, align 8
  %48 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %47, i32 0, i32 0
  %49 = load i64, i64* %12, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  br label %51

51:                                               ; preds = %46, %33
  %52 = load %struct.sbp2_orb*, %struct.sbp2_orb** %11, align 8
  %53 = getelementptr inbounds %struct.sbp2_orb, %struct.sbp2_orb* %52, i32 0, i32 1
  %54 = load i32, i32* @free_orb, align 4
  %55 = call i32 @kref_put(i32* %53, i32 %54)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

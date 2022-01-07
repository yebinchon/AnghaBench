; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_a100u2w.c_orchid_abort_scb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_a100u2w.c_orchid_abort_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orc_host = type { i64 }
%struct.orc_scb = type { i8 }

@ORC_CMD_ABORT_SCB = common dso_local global i8 0, align 1
@ORC_HDATA = common dso_local global i64 0, align 8
@HDO = common dso_local global i8 0, align 1
@ORC_HCTRL = common dso_local global i64 0, align 8
@ORC_HSTUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.orc_host*, %struct.orc_scb*)* @orchid_abort_scb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orchid_abort_scb(%struct.orc_host* %0, %struct.orc_scb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.orc_host*, align 8
  %5 = alloca %struct.orc_scb*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.orc_host* %0, %struct.orc_host** %4, align 8
  store %struct.orc_scb* %1, %struct.orc_scb** %5, align 8
  %8 = load i8, i8* @ORC_CMD_ABORT_SCB, align 1
  %9 = load %struct.orc_host*, %struct.orc_host** %4, align 8
  %10 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ORC_HDATA, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @outb(i8 zeroext %8, i64 %13)
  %15 = load i8, i8* @HDO, align 1
  %16 = load %struct.orc_host*, %struct.orc_host** %4, align 8
  %17 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ORC_HCTRL, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @outb(i8 zeroext %15, i64 %20)
  %22 = load %struct.orc_host*, %struct.orc_host** %4, align 8
  %23 = call i64 @wait_HDO_off(%struct.orc_host* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %71

26:                                               ; preds = %2
  %27 = load %struct.orc_scb*, %struct.orc_scb** %5, align 8
  %28 = getelementptr inbounds %struct.orc_scb, %struct.orc_scb* %27, i32 0, i32 0
  %29 = load i8, i8* %28, align 1
  %30 = load %struct.orc_host*, %struct.orc_host** %4, align 8
  %31 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ORC_HDATA, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @outb(i8 zeroext %29, i64 %34)
  %36 = load i8, i8* @HDO, align 1
  %37 = load %struct.orc_host*, %struct.orc_host** %4, align 8
  %38 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ORC_HCTRL, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @outb(i8 zeroext %36, i64 %41)
  %43 = load %struct.orc_host*, %struct.orc_host** %4, align 8
  %44 = call i64 @wait_HDO_off(%struct.orc_host* %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %71

47:                                               ; preds = %26
  %48 = load %struct.orc_host*, %struct.orc_host** %4, align 8
  %49 = call i64 @wait_hdi_set(%struct.orc_host* %48, i8* %6)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %71

52:                                               ; preds = %47
  %53 = load %struct.orc_host*, %struct.orc_host** %4, align 8
  %54 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @ORC_HDATA, align 8
  %57 = add nsw i64 %55, %56
  %58 = call zeroext i8 @inb(i64 %57)
  store i8 %58, i8* %7, align 1
  %59 = load i8, i8* %6, align 1
  %60 = load %struct.orc_host*, %struct.orc_host** %4, align 8
  %61 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @ORC_HSTUS, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @outb(i8 zeroext %59, i64 %64)
  %66 = load i8, i8* %7, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %70

69:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %71

70:                                               ; preds = %52
  store i32 1, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %69, %51, %46, %25
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local i64 @wait_HDO_off(%struct.orc_host*) #1

declare dso_local i64 @wait_hdi_set(%struct.orc_host*, i8*) #1

declare dso_local zeroext i8 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

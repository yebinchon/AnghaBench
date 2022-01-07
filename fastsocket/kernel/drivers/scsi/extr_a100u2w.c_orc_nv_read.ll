; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_a100u2w.c_orc_nv_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_a100u2w.c_orc_nv_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orc_host = type { i64 }

@ORC_CMD_GET_NVM = common dso_local global i8 0, align 1
@ORC_HDATA = common dso_local global i64 0, align 8
@HDO = common dso_local global i8 0, align 1
@ORC_HCTRL = common dso_local global i64 0, align 8
@ORC_HSTUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.orc_host*, i32, i32*)* @orc_nv_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orc_nv_read(%struct.orc_host* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.orc_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8, align 1
  store %struct.orc_host* %0, %struct.orc_host** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i8, i8* @ORC_CMD_GET_NVM, align 1
  %10 = load %struct.orc_host*, %struct.orc_host** %5, align 8
  %11 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ORC_HDATA, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @outb(i8 zeroext %9, i64 %14)
  %16 = load i8, i8* @HDO, align 1
  %17 = load %struct.orc_host*, %struct.orc_host** %5, align 8
  %18 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ORC_HCTRL, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @outb(i8 zeroext %16, i64 %21)
  %23 = load %struct.orc_host*, %struct.orc_host** %5, align 8
  %24 = call i64 @wait_HDO_off(%struct.orc_host* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %67

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = trunc i32 %28 to i8
  %30 = load %struct.orc_host*, %struct.orc_host** %5, align 8
  %31 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ORC_HDATA, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @outb(i8 zeroext %29, i64 %34)
  %36 = load i8, i8* @HDO, align 1
  %37 = load %struct.orc_host*, %struct.orc_host** %5, align 8
  %38 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ORC_HCTRL, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @outb(i8 zeroext %36, i64 %41)
  %43 = load %struct.orc_host*, %struct.orc_host** %5, align 8
  %44 = call i64 @wait_HDO_off(%struct.orc_host* %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %67

47:                                               ; preds = %27
  %48 = load %struct.orc_host*, %struct.orc_host** %5, align 8
  %49 = call i64 @wait_hdi_set(%struct.orc_host* %48, i8* %8)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %67

52:                                               ; preds = %47
  %53 = load %struct.orc_host*, %struct.orc_host** %5, align 8
  %54 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @ORC_HDATA, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @inb(i64 %57)
  %59 = load i32*, i32** %7, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i8, i8* %8, align 1
  %61 = load %struct.orc_host*, %struct.orc_host** %5, align 8
  %62 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @ORC_HSTUS, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @outb(i8 zeroext %60, i64 %65)
  store i32 1, i32* %4, align 4
  br label %67

67:                                               ; preds = %52, %51, %46, %26
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local i64 @wait_HDO_off(%struct.orc_host*) #1

declare dso_local i64 @wait_hdi_set(%struct.orc_host*, i8*) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

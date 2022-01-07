; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_a100u2w.c_orc_nv_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_a100u2w.c_orc_nv_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orc_host = type { i64 }

@ORC_CMD_SET_NVM = common dso_local global i8 0, align 1
@ORC_HDATA = common dso_local global i64 0, align 8
@HDO = common dso_local global i8 0, align 1
@ORC_HCTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.orc_host*, i8, i8)* @orc_nv_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orc_nv_write(%struct.orc_host* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.orc_host*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.orc_host* %0, %struct.orc_host** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  %8 = load i8, i8* @ORC_CMD_SET_NVM, align 1
  %9 = load %struct.orc_host*, %struct.orc_host** %5, align 8
  %10 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ORC_HDATA, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @outb(i8 zeroext %8, i64 %13)
  %15 = load i8, i8* @HDO, align 1
  %16 = load %struct.orc_host*, %struct.orc_host** %5, align 8
  %17 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ORC_HCTRL, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @outb(i8 zeroext %15, i64 %20)
  %22 = load %struct.orc_host*, %struct.orc_host** %5, align 8
  %23 = call i64 @wait_HDO_off(%struct.orc_host* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %65

26:                                               ; preds = %3
  %27 = load i8, i8* %6, align 1
  %28 = load %struct.orc_host*, %struct.orc_host** %5, align 8
  %29 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ORC_HDATA, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @outb(i8 zeroext %27, i64 %32)
  %34 = load i8, i8* @HDO, align 1
  %35 = load %struct.orc_host*, %struct.orc_host** %5, align 8
  %36 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ORC_HCTRL, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @outb(i8 zeroext %34, i64 %39)
  %41 = load %struct.orc_host*, %struct.orc_host** %5, align 8
  %42 = call i64 @wait_HDO_off(%struct.orc_host* %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %65

45:                                               ; preds = %26
  %46 = load i8, i8* %7, align 1
  %47 = load %struct.orc_host*, %struct.orc_host** %5, align 8
  %48 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ORC_HDATA, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @outb(i8 zeroext %46, i64 %51)
  %53 = load i8, i8* @HDO, align 1
  %54 = load %struct.orc_host*, %struct.orc_host** %5, align 8
  %55 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ORC_HCTRL, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @outb(i8 zeroext %53, i64 %58)
  %60 = load %struct.orc_host*, %struct.orc_host** %5, align 8
  %61 = call i64 @wait_HDO_off(%struct.orc_host* %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %65

64:                                               ; preds = %45
  store i32 1, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %63, %44, %25
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local i64 @wait_HDO_off(%struct.orc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

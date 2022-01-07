; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_a100u2w.c_orc_read_fwrev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_a100u2w.c_orc_read_fwrev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orc_host = type { i64 }

@ORC_CMD_VERSION = common dso_local global i32 0, align 4
@ORC_HDATA = common dso_local global i64 0, align 8
@HDO = common dso_local global i32 0, align 4
@ORC_HCTRL = common dso_local global i64 0, align 8
@ORC_HSTUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.orc_host*)* @orc_read_fwrev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @orc_read_fwrev(%struct.orc_host* %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca %struct.orc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.orc_host* %0, %struct.orc_host** %3, align 8
  %6 = load i32, i32* @ORC_CMD_VERSION, align 4
  %7 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %8 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ORC_HDATA, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @outb(i32 %6, i64 %11)
  %13 = load i32, i32* @HDO, align 4
  %14 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %15 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ORC_HCTRL, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @outb(i32 %13, i64 %18)
  %20 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %21 = call i64 @wait_HDO_off(%struct.orc_host* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i16 0, i16* %2, align 2
  br label %66

24:                                               ; preds = %1
  %25 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %26 = call i64 @wait_hdi_set(%struct.orc_host* %25, i32* %5)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i16 0, i16* %2, align 2
  br label %66

29:                                               ; preds = %24
  %30 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %31 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ORC_HDATA, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @inb(i64 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %38 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ORC_HSTUS, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @outb(i32 %36, i64 %41)
  %43 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %44 = call i64 @wait_hdi_set(%struct.orc_host* %43, i32* %5)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %29
  store i16 0, i16* %2, align 2
  br label %66

47:                                               ; preds = %29
  %48 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %49 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ORC_HDATA, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @inb(i64 %52)
  %54 = shl i32 %53, 8
  %55 = load i32, i32* %4, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %59 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ORC_HSTUS, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @outb(i32 %57, i64 %62)
  %64 = load i32, i32* %4, align 4
  %65 = trunc i32 %64 to i16
  store i16 %65, i16* %2, align 2
  br label %66

66:                                               ; preds = %47, %46, %28, %23
  %67 = load i16, i16* %2, align 2
  ret i16 %67
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i64 @wait_HDO_off(%struct.orc_host*) #1

declare dso_local i64 @wait_hdi_set(%struct.orc_host*, i32*) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

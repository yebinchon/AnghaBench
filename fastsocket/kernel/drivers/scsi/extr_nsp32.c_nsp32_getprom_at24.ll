; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_nsp32.c_nsp32_getprom_at24.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_nsp32.c_nsp32_getprom_at24.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, i8* }
%struct.TYPE_7__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Unsupported Auto Sync mode. Fall back to manual mode.\00", align 1
@trans_mode = common dso_local global i64 0, align 8
@ULTRA20M_MODE = common dso_local global i64 0, align 8
@NSP32_HOST_SCSIID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @nsp32_getprom_at24 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsp32_getprom_at24(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = call i8* @nsp32_prom_read(%struct.TYPE_8__* %8, i32 18)
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store i8* %9, i8** %11, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %13 = call i8* @nsp32_prom_read(%struct.TYPE_8__* %12, i32 7)
  %14 = ptrtoint i8* %13 to i32
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  switch i32 %15, label %20 [
    i32 0, label %16
    i32 1, label %18
  ]

16:                                               ; preds = %1
  %17 = load i32, i32* @TRUE, align 4
  store i32 %17, i32* %5, align 4
  br label %24

18:                                               ; preds = %1
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %5, align 4
  br label %24

20:                                               ; preds = %1
  %21 = load i32, i32* @KERN_WARNING, align 4
  %22 = call i32 @nsp32_msg(i32 %21, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @TRUE, align 4
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %20, %18, %16
  %25 = load i64, i64* @trans_mode, align 8
  %26 = load i64, i64* @ULTRA20M_MODE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @TRUE, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %28, %24
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %65, %30
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @NSP32_HOST_SCSIID, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %68

35:                                               ; preds = %31
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i64 %40
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %6, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @TRUE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  store i32 0, i32* %47, align 4
  br label %64

48:                                               ; preds = %35
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i8* @nsp32_prom_read(%struct.TYPE_8__* %49, i32 %50)
  %52 = ptrtoint i8* %51 to i32
  store i32 %52, i32* %3, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @nsp32_search_period_entry(%struct.TYPE_8__* %53, %struct.TYPE_7__* %54, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %59, %48
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %60, %45
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %31

68:                                               ; preds = %31
  %69 = load i32, i32* @TRUE, align 4
  ret i32 %69
}

declare dso_local i8* @nsp32_prom_read(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @nsp32_msg(i32, i8*) #1

declare dso_local i32 @nsp32_search_period_entry(%struct.TYPE_8__*, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

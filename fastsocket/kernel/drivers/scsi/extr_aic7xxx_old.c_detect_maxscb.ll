; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_detect_maxscb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_detect_maxscb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aic7xxx_host = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FREE_SCBH = common dso_local global i64 0, align 8
@AIC7XXX_MAXSCB = common dso_local global i32 0, align 4
@SCBPTR = common dso_local global i64 0, align 8
@SCB_CONTROL = common dso_local global i64 0, align 8
@SCB_NEXT = common dso_local global i64 0, align 8
@SCB_LIST_NULL = common dso_local global i32 0, align 4
@SCB_TAG = common dso_local global i64 0, align 8
@SCB_BUSYTARGETS = common dso_local global i64 0, align 8
@AHC_PAGESCBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aic7xxx_host*)* @detect_maxscb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @detect_maxscb(%struct.aic7xxx_host* %0) #0 {
  %2 = alloca %struct.aic7xxx_host*, align 8
  %3 = alloca i32, align 4
  store %struct.aic7xxx_host* %0, %struct.aic7xxx_host** %2, align 8
  %4 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %5 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %113

10:                                               ; preds = %1
  %11 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %12 = load i64, i64* @FREE_SCBH, align 8
  %13 = call i32 @aic_outb(%struct.aic7xxx_host* %11, i32 0, i64 %12)
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %78, %10
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @AIC7XXX_MAXSCB, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %81

18:                                               ; preds = %14
  %19 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load i64, i64* @SCBPTR, align 8
  %22 = call i32 @aic_outb(%struct.aic7xxx_host* %19, i32 %20, i64 %21)
  %23 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = load i64, i64* @SCB_CONTROL, align 8
  %26 = call i32 @aic_outb(%struct.aic7xxx_host* %23, i32 %24, i64 %25)
  %27 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %28 = load i64, i64* @SCB_CONTROL, align 8
  %29 = call i32 @aic_inb(%struct.aic7xxx_host* %27, i64 %28)
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %18
  br label %81

33:                                               ; preds = %18
  %34 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %35 = load i64, i64* @SCBPTR, align 8
  %36 = call i32 @aic_outb(%struct.aic7xxx_host* %34, i32 0, i64 %35)
  %37 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %38 = load i64, i64* @SCB_CONTROL, align 8
  %39 = call i32 @aic_inb(%struct.aic7xxx_host* %37, i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %81

42:                                               ; preds = %33
  %43 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %44 = load i32, i32* %3, align 4
  %45 = load i64, i64* @SCBPTR, align 8
  %46 = call i32 @aic_outb(%struct.aic7xxx_host* %43, i32 %44, i64 %45)
  %47 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %48 = load i64, i64* @SCB_CONTROL, align 8
  %49 = call i32 @aic_outb(%struct.aic7xxx_host* %47, i32 0, i64 %48)
  %50 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  %53 = load i64, i64* @SCB_NEXT, align 8
  %54 = call i32 @aic_outb(%struct.aic7xxx_host* %50, i32 %52, i64 %53)
  %55 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %56 = load i32, i32* @SCB_LIST_NULL, align 4
  %57 = load i64, i64* @SCB_TAG, align 8
  %58 = call i32 @aic_outb(%struct.aic7xxx_host* %55, i32 %56, i64 %57)
  %59 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %60 = load i32, i32* @SCB_LIST_NULL, align 4
  %61 = load i64, i64* @SCB_BUSYTARGETS, align 8
  %62 = call i32 @aic_outb(%struct.aic7xxx_host* %59, i32 %60, i64 %61)
  %63 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %64 = load i32, i32* @SCB_LIST_NULL, align 4
  %65 = load i64, i64* @SCB_BUSYTARGETS, align 8
  %66 = add nsw i64 %65, 1
  %67 = call i32 @aic_outb(%struct.aic7xxx_host* %63, i32 %64, i64 %66)
  %68 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %69 = load i32, i32* @SCB_LIST_NULL, align 4
  %70 = load i64, i64* @SCB_BUSYTARGETS, align 8
  %71 = add nsw i64 %70, 2
  %72 = call i32 @aic_outb(%struct.aic7xxx_host* %68, i32 %69, i64 %71)
  %73 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %74 = load i32, i32* @SCB_LIST_NULL, align 4
  %75 = load i64, i64* @SCB_BUSYTARGETS, align 8
  %76 = add nsw i64 %75, 3
  %77 = call i32 @aic_outb(%struct.aic7xxx_host* %73, i32 %74, i64 %76)
  br label %78

78:                                               ; preds = %42
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  br label %14

81:                                               ; preds = %41, %32, %14
  %82 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sub nsw i32 %83, 1
  %85 = load i64, i64* @SCBPTR, align 8
  %86 = call i32 @aic_outb(%struct.aic7xxx_host* %82, i32 %84, i64 %85)
  %87 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %88 = load i32, i32* @SCB_LIST_NULL, align 4
  %89 = load i64, i64* @SCB_NEXT, align 8
  %90 = call i32 @aic_outb(%struct.aic7xxx_host* %87, i32 %88, i64 %89)
  %91 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %92 = load i64, i64* @SCBPTR, align 8
  %93 = call i32 @aic_outb(%struct.aic7xxx_host* %91, i32 0, i64 %92)
  %94 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %95 = load i64, i64* @SCB_CONTROL, align 8
  %96 = call i32 @aic_outb(%struct.aic7xxx_host* %94, i32 0, i64 %95)
  %97 = load i32, i32* %3, align 4
  %98 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %99 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %98, i32 0, i32 1
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  store i32 %97, i32* %101, align 4
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* @AIC7XXX_MAXSCB, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %81
  %106 = load i32, i32* @AHC_PAGESCBS, align 4
  %107 = xor i32 %106, -1
  %108 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %109 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = and i32 %110, %107
  store i32 %111, i32* %109, align 8
  br label %112

112:                                              ; preds = %105, %81
  br label %113

113:                                              ; preds = %112, %1
  ret void
}

declare dso_local i32 @aic_outb(%struct.aic7xxx_host*, i32, i64) #1

declare dso_local i32 @aic_inb(%struct.aic7xxx_host*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

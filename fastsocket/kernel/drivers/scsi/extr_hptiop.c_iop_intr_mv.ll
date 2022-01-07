; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hptiop.c_iop_intr_mv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hptiop.c_iop_intr_mv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hptiop_hba = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@MVIOP_MU_OUTBOUND_INT_MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"received outbound msg %x\0A\00", align 1
@MVIOP_MU_OUTBOUND_INT_POSTQUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hptiop_hba*)* @iop_intr_mv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iop_intr_mv(%struct.hptiop_hba* %0) #0 {
  %2 = alloca %struct.hptiop_hba*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hptiop_hba* %0, %struct.hptiop_hba** %2, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.hptiop_hba*, %struct.hptiop_hba** %2, align 8
  %8 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = call i32 @readl(i32* %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.hptiop_hba*, %struct.hptiop_hba** %2, align 8
  %17 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = call i32 @writel(i32 %15, i32* %21)
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @MVIOP_MU_OUTBOUND_INT_MSG, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %1
  %28 = load %struct.hptiop_hba*, %struct.hptiop_hba** %2, align 8
  %29 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = call i32 @readl(i32* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @dprintk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.hptiop_hba*, %struct.hptiop_hba** %2, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @hptiop_message_callback(%struct.hptiop_hba* %37, i32 %38)
  store i32 1, i32* %4, align 4
  br label %40

40:                                               ; preds = %27, %1
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @MVIOP_MU_OUTBOUND_INT_POSTQUEUE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %54, %45
  %47 = load %struct.hptiop_hba*, %struct.hptiop_hba** %2, align 8
  %48 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = call i32 @mv_outbound_read(%struct.TYPE_8__* %51)
  store i32 %52, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load %struct.hptiop_hba*, %struct.hptiop_hba** %2, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @hptiop_request_callback_mv(%struct.hptiop_hba* %55, i32 %56)
  br label %46

58:                                               ; preds = %46
  store i32 1, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %40
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @hptiop_message_callback(%struct.hptiop_hba*, i32) #1

declare dso_local i32 @mv_outbound_read(%struct.TYPE_8__*) #1

declare dso_local i32 @hptiop_request_callback_mv(%struct.hptiop_hba*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

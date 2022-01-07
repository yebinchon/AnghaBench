; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_chsc_sch.c_chsc_examine_irb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_chsc_sch.c_chsc_examine_irb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chsc_request = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@SCSW_STCTL_STATUS_PEND = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SCHN_STAT_CHAIN_CHECK = common dso_local global i32 0, align 4
@SCHN_STAT_PROG_CHECK = common dso_local global i32 0, align 4
@SCHN_STAT_PROT_CHECK = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@SCHN_STAT_CHN_DATA_CHK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@SCHN_STAT_CHN_CTRL_CHK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.chsc_request*)* @chsc_examine_irb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chsc_examine_irb(%struct.chsc_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.chsc_request*, align 8
  %4 = alloca i32, align 4
  store %struct.chsc_request* %0, %struct.chsc_request** %3, align 8
  %5 = load %struct.chsc_request*, %struct.chsc_request** %3, align 8
  %6 = getelementptr inbounds %struct.chsc_request, %struct.chsc_request* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = call i32 @scsw_stctl(%struct.TYPE_7__* %7)
  %9 = load i32, i32* @SCSW_STCTL_STATUS_PEND, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %88

15:                                               ; preds = %1
  %16 = load %struct.chsc_request*, %struct.chsc_request** %3, align 8
  %17 = getelementptr inbounds %struct.chsc_request, %struct.chsc_request* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = call i32 @scsw_cstat(%struct.TYPE_7__* %18)
  %20 = load i32, i32* @SCHN_STAT_CHAIN_CHECK, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @SCHN_STAT_CHAIN_CHECK, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.chsc_request*, %struct.chsc_request** %3, align 8
  %25 = getelementptr inbounds %struct.chsc_request, %struct.chsc_request* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %23
  store i32 %30, i32* %28, align 4
  %31 = load %struct.chsc_request*, %struct.chsc_request** %3, align 8
  %32 = getelementptr inbounds %struct.chsc_request, %struct.chsc_request* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = call i32 @scsw_cstat(%struct.TYPE_7__* %33)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %88

37:                                               ; preds = %15
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %88

41:                                               ; preds = %37
  %42 = load %struct.chsc_request*, %struct.chsc_request** %3, align 8
  %43 = getelementptr inbounds %struct.chsc_request, %struct.chsc_request* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = call i32 @scsw_cstat(%struct.TYPE_7__* %44)
  %46 = load i32, i32* @SCHN_STAT_PROG_CHECK, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %88

52:                                               ; preds = %41
  %53 = load %struct.chsc_request*, %struct.chsc_request** %3, align 8
  %54 = getelementptr inbounds %struct.chsc_request, %struct.chsc_request* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = call i32 @scsw_cstat(%struct.TYPE_7__* %55)
  %57 = load i32, i32* @SCHN_STAT_PROT_CHECK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load i32, i32* @EPERM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %88

63:                                               ; preds = %52
  %64 = load %struct.chsc_request*, %struct.chsc_request** %3, align 8
  %65 = getelementptr inbounds %struct.chsc_request, %struct.chsc_request* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = call i32 @scsw_cstat(%struct.TYPE_7__* %66)
  %68 = load i32, i32* @SCHN_STAT_CHN_DATA_CHK, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load i32, i32* @EAGAIN, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %88

74:                                               ; preds = %63
  %75 = load %struct.chsc_request*, %struct.chsc_request** %3, align 8
  %76 = getelementptr inbounds %struct.chsc_request, %struct.chsc_request* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = call i32 @scsw_cstat(%struct.TYPE_7__* %77)
  %79 = load i32, i32* @SCHN_STAT_CHN_CTRL_CHK, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load i32, i32* @EAGAIN, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %88

85:                                               ; preds = %74
  %86 = load i32, i32* @EIO, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %85, %82, %71, %60, %49, %40, %36, %12
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @scsw_stctl(%struct.TYPE_7__*) #1

declare dso_local i32 @scsw_cstat(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

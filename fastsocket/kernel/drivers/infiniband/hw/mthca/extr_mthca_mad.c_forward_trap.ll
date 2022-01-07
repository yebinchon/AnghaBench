; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_mad.c_forward_trap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_mad.c_forward_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32, i32*, %struct.ib_mad_agent*** }
%struct.ib_mad_agent = type { i32 }
%struct.ib_mad = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ib_mad_send_buf = type { i32, i32 }

@IB_MGMT_CLASS_SUBN_LID_ROUTED = common dso_local global i64 0, align 8
@IB_MGMT_MAD_HDR = common dso_local global i32 0, align 4
@IB_MGMT_MAD_DATA = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mthca_dev*, i32, %struct.ib_mad*)* @forward_trap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @forward_trap(%struct.mthca_dev* %0, i32 %1, %struct.ib_mad* %2) #0 {
  %4 = alloca %struct.mthca_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_mad*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_mad_send_buf*, align 8
  %9 = alloca %struct.ib_mad_agent*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.mthca_dev* %0, %struct.mthca_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_mad* %2, %struct.ib_mad** %6, align 8
  %12 = load %struct.ib_mad*, %struct.ib_mad** %6, align 8
  %13 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IB_MGMT_CLASS_SUBN_LID_ROUTED, align 8
  %17 = icmp ne i64 %15, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %7, align 4
  %19 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %20 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %19, i32 0, i32 2
  %21 = load %struct.ib_mad_agent***, %struct.ib_mad_agent**** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ib_mad_agent**, %struct.ib_mad_agent*** %21, i64 %24
  %26 = load %struct.ib_mad_agent**, %struct.ib_mad_agent*** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ib_mad_agent*, %struct.ib_mad_agent** %26, i64 %28
  %30 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %29, align 8
  store %struct.ib_mad_agent* %30, %struct.ib_mad_agent** %9, align 8
  %31 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %9, align 8
  %32 = icmp ne %struct.ib_mad_agent* %31, null
  br i1 %32, label %33, label %82

33:                                               ; preds = %3
  %34 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %9, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @IB_MGMT_MAD_HDR, align 4
  %37 = load i32, i32* @IB_MGMT_MAD_DATA, align 4
  %38 = load i32, i32* @GFP_ATOMIC, align 4
  %39 = call %struct.ib_mad_send_buf* @ib_create_send_mad(%struct.ib_mad_agent* %34, i32 %35, i32 0, i32 0, i32 %36, i32 %37, i32 %38)
  store %struct.ib_mad_send_buf* %39, %struct.ib_mad_send_buf** %8, align 8
  %40 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %8, align 8
  %41 = call i64 @IS_ERR(%struct.ib_mad_send_buf* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %82

44:                                               ; preds = %33
  %45 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %46 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %45, i32 0, i32 0
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  %49 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %8, align 8
  %50 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ib_mad*, %struct.ib_mad** %6, align 8
  %53 = call i32 @memcpy(i32 %51, %struct.ib_mad* %52, i32 8)
  %54 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %55 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %8, align 8
  %63 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = icmp ne i32 %61, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %44
  %66 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %8, align 8
  %67 = call i32 @ib_post_send_mad(%struct.ib_mad_send_buf* %66, i32* null)
  store i32 %67, i32* %10, align 4
  br label %71

68:                                               ; preds = %44
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %68, %65
  %72 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %73 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %72, i32 0, i32 0
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %8, align 8
  %80 = call i32 @ib_free_send_mad(%struct.ib_mad_send_buf* %79)
  br label %81

81:                                               ; preds = %78, %71
  br label %82

82:                                               ; preds = %43, %81, %3
  ret void
}

declare dso_local %struct.ib_mad_send_buf* @ib_create_send_mad(%struct.ib_mad_agent*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ib_mad_send_buf*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i32, %struct.ib_mad*, i32) #1

declare dso_local i32 @ib_post_send_mad(%struct.ib_mad_send_buf*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ib_free_send_mad(%struct.ib_mad_send_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

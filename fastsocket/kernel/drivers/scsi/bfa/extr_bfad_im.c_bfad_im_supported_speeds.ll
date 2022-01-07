; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_im.c_bfad_im_supported_speeds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_im.c_bfad_im_supported_speeds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32 }
%struct.bfa_ioc_attr_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@BFA_PORT_SPEED_16GBPS = common dso_local global i64 0, align 8
@FC_PORTSPEED_16GBIT = common dso_local global i32 0, align 4
@FC_PORTSPEED_8GBIT = common dso_local global i32 0, align 4
@FC_PORTSPEED_4GBIT = common dso_local global i32 0, align 4
@FC_PORTSPEED_2GBIT = common dso_local global i32 0, align 4
@BFA_PORT_SPEED_8GBPS = common dso_local global i64 0, align 8
@FC_PORTSPEED_1GBIT = common dso_local global i32 0, align 4
@BFA_PORT_SPEED_4GBPS = common dso_local global i64 0, align 8
@BFA_PORT_SPEED_10GBPS = common dso_local global i64 0, align 8
@FC_PORTSPEED_10GBIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_im_supported_speeds(%struct.bfa_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bfa_s*, align 8
  %4 = alloca %struct.bfa_ioc_attr_s*, align 8
  %5 = alloca i32, align 4
  store %struct.bfa_s* %0, %struct.bfa_s** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.bfa_ioc_attr_s* @kzalloc(i32 16, i32 %6)
  store %struct.bfa_ioc_attr_s* %7, %struct.bfa_ioc_attr_s** %4, align 8
  %8 = load %struct.bfa_ioc_attr_s*, %struct.bfa_ioc_attr_s** %4, align 8
  %9 = icmp ne %struct.bfa_ioc_attr_s* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %97

11:                                               ; preds = %1
  %12 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %12, i32 0, i32 0
  %14 = load %struct.bfa_ioc_attr_s*, %struct.bfa_ioc_attr_s** %4, align 8
  %15 = call i32 @bfa_ioc_get_attr(i32* %13, %struct.bfa_ioc_attr_s* %14)
  %16 = load %struct.bfa_ioc_attr_s*, %struct.bfa_ioc_attr_s** %4, align 8
  %17 = getelementptr inbounds %struct.bfa_ioc_attr_s, %struct.bfa_ioc_attr_s* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @BFA_PORT_SPEED_16GBPS, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %11
  %23 = load i32, i32* @FC_PORTSPEED_16GBIT, align 4
  %24 = load i32, i32* @FC_PORTSPEED_8GBIT, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @FC_PORTSPEED_4GBIT, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @FC_PORTSPEED_2GBIT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %93

32:                                               ; preds = %11
  %33 = load %struct.bfa_ioc_attr_s*, %struct.bfa_ioc_attr_s** %4, align 8
  %34 = getelementptr inbounds %struct.bfa_ioc_attr_s, %struct.bfa_ioc_attr_s* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @BFA_PORT_SPEED_8GBPS, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %64

39:                                               ; preds = %32
  %40 = load %struct.bfa_ioc_attr_s*, %struct.bfa_ioc_attr_s** %4, align 8
  %41 = getelementptr inbounds %struct.bfa_ioc_attr_s, %struct.bfa_ioc_attr_s* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load i32, i32* @FC_PORTSPEED_8GBIT, align 4
  %47 = load i32, i32* @FC_PORTSPEED_4GBIT, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @FC_PORTSPEED_2GBIT, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @FC_PORTSPEED_1GBIT, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  br label %63

55:                                               ; preds = %39
  %56 = load i32, i32* @FC_PORTSPEED_8GBIT, align 4
  %57 = load i32, i32* @FC_PORTSPEED_4GBIT, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @FC_PORTSPEED_2GBIT, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %55, %45
  br label %92

64:                                               ; preds = %32
  %65 = load %struct.bfa_ioc_attr_s*, %struct.bfa_ioc_attr_s** %4, align 8
  %66 = getelementptr inbounds %struct.bfa_ioc_attr_s, %struct.bfa_ioc_attr_s* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @BFA_PORT_SPEED_4GBPS, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %64
  %72 = load i32, i32* @FC_PORTSPEED_4GBIT, align 4
  %73 = load i32, i32* @FC_PORTSPEED_2GBIT, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @FC_PORTSPEED_1GBIT, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %5, align 4
  br label %91

79:                                               ; preds = %64
  %80 = load %struct.bfa_ioc_attr_s*, %struct.bfa_ioc_attr_s** %4, align 8
  %81 = getelementptr inbounds %struct.bfa_ioc_attr_s, %struct.bfa_ioc_attr_s* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @BFA_PORT_SPEED_10GBPS, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load i32, i32* @FC_PORTSPEED_10GBIT, align 4
  %88 = load i32, i32* %5, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %86, %79
  br label %91

91:                                               ; preds = %90, %71
  br label %92

92:                                               ; preds = %91, %63
  br label %93

93:                                               ; preds = %92, %22
  %94 = load %struct.bfa_ioc_attr_s*, %struct.bfa_ioc_attr_s** %4, align 8
  %95 = call i32 @kfree(%struct.bfa_ioc_attr_s* %94)
  %96 = load i32, i32* %5, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %93, %10
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.bfa_ioc_attr_s* @kzalloc(i32, i32) #1

declare dso_local i32 @bfa_ioc_get_attr(i32*, %struct.bfa_ioc_attr_s*) #1

declare dso_local i32 @kfree(%struct.bfa_ioc_attr_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

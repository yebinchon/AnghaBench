; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_hscx_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_hscx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hscx_hw = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@IPAC_RAH2 = common dso_local global i32 0, align 4
@IPAC_XBCH = common dso_local global i32 0, align 4
@IPAC_RLCR = common dso_local global i32 0, align 4
@IPAC_TYPE_HSCX = common dso_local global i32 0, align 4
@IPAC_CCR1 = common dso_local global i32 0, align 4
@HSCX_VSTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s: HSCX VSTR %02x\0A\00", align 1
@DEBUG_HW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"%s: HSCX version %s\0A\00", align 1
@HSCXVer = common dso_local global i32* null, align 8
@IPAC_CCR2 = common dso_local global i32 0, align 4
@IPAC_XCCR = common dso_local global i32 0, align 4
@IPAC_RCCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hscx_hw*)* @hscx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hscx_init(%struct.hscx_hw* %0) #0 {
  %2 = alloca %struct.hscx_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.hscx_hw* %0, %struct.hscx_hw** %2, align 8
  %4 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %5 = load i32, i32* @IPAC_RAH2, align 4
  %6 = call i32 @WriteHSCX(%struct.hscx_hw* %4, i32 %5, i32 255)
  %7 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %8 = load i32, i32* @IPAC_XBCH, align 4
  %9 = call i32 @WriteHSCX(%struct.hscx_hw* %7, i32 %8, i32 0)
  %10 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %11 = load i32, i32* @IPAC_RLCR, align 4
  %12 = call i32 @WriteHSCX(%struct.hscx_hw* %10, i32 %11, i32 0)
  %13 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %14 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IPAC_TYPE_HSCX, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %56

21:                                               ; preds = %1
  %22 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %23 = load i32, i32* @IPAC_CCR1, align 4
  %24 = call i32 @WriteHSCX(%struct.hscx_hw* %22, i32 %23, i32 133)
  %25 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %26 = load i32, i32* @HSCX_VSTR, align 4
  %27 = call i32 @ReadHSCX(%struct.hscx_hw* %25, i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %29 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %36 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @DEBUG_HW, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %21
  %43 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %44 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** @HSCXVer, align 8
  %49 = load i32, i32* %3, align 4
  %50 = and i32 %49, 15
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @pr_notice(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %53)
  br label %55

55:                                               ; preds = %42, %21
  br label %60

56:                                               ; preds = %1
  %57 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %58 = load i32, i32* @IPAC_CCR1, align 4
  %59 = call i32 @WriteHSCX(%struct.hscx_hw* %57, i32 %58, i32 130)
  br label %60

60:                                               ; preds = %56, %55
  %61 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %62 = load i32, i32* @IPAC_CCR2, align 4
  %63 = call i32 @WriteHSCX(%struct.hscx_hw* %61, i32 %62, i32 48)
  %64 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %65 = load i32, i32* @IPAC_XCCR, align 4
  %66 = call i32 @WriteHSCX(%struct.hscx_hw* %64, i32 %65, i32 7)
  %67 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %68 = load i32, i32* @IPAC_RCCR, align 4
  %69 = call i32 @WriteHSCX(%struct.hscx_hw* %67, i32 %68, i32 7)
  ret void
}

declare dso_local i32 @WriteHSCX(%struct.hscx_hw*, i32, i32) #1

declare dso_local i32 @ReadHSCX(%struct.hscx_hw*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @pr_notice(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

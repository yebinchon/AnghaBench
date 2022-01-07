; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_intr.c_handle_supp_msgs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_intr.c_handle_supp_msgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32 }

@INFINIPATH_E_IBSTATUSCHANGED = common dso_local global i32 0, align 4
@INFINIPATH_E_RRCVEGRFULL = common dso_local global i32 0, align 4
@INFINIPATH_E_RRCVHDRFULL = common dso_local global i32 0, align 4
@INFINIPATH_E_PKTERRS = common dso_local global i32 0, align 4
@INFINIPATH_E_SDMADISABLED = common dso_local global i32 0, align 4
@ipath_debug = common dso_local global i32 0, align 4
@__IPATH_DBG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Suppressed %u messages for fast-repeating errors (%s) (%llx)\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Suppressed %u messages for %s\0A\00", align 1
@ERRPKT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipath_devdata*, i32, i8*, i32)* @handle_supp_msgs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_supp_msgs(%struct.ipath_devdata* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.ipath_devdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %12 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @INFINIPATH_E_IBSTATUSCHANGED, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %76

18:                                               ; preds = %4
  %19 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %23 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @INFINIPATH_E_IBSTATUSCHANGED, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = call i32 @ipath_decode_err(%struct.ipath_devdata* %19, i8* %20, i32 %21, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* @INFINIPATH_E_RRCVEGRFULL, align 4
  %30 = load i32, i32* @INFINIPATH_E_RRCVHDRFULL, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @INFINIPATH_E_PKTERRS, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @INFINIPATH_E_SDMADISABLED, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* @ipath_debug, align 4
  %37 = load i32, i32* @__IPATH_DBG, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %18
  %41 = load i32, i32* @INFINIPATH_E_SDMADISABLED, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %10, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %40, %18
  %46 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %47 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %10, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %45
  %54 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %58 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = call i32 @ipath_dev_err(%struct.ipath_devdata* %54, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %55, i8* %56, i64 %60)
  br label %75

62:                                               ; preds = %45
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32, i32* %6, align 4
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @ipath_dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %66, i8* %67)
  br label %74

69:                                               ; preds = %62
  %70 = load i32, i32* @ERRPKT, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 @ipath_cdbg(i32 %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %71, i8* %72)
  br label %74

74:                                               ; preds = %69, %65
  br label %75

75:                                               ; preds = %74, %53
  br label %76

76:                                               ; preds = %75, %4
  ret void
}

declare dso_local i32 @ipath_decode_err(%struct.ipath_devdata*, i8*, i32, i32) #1

declare dso_local i32 @ipath_dev_err(%struct.ipath_devdata*, i8*, i32, i8*, i64) #1

declare dso_local i32 @ipath_dbg(i8*, i32, i8*) #1

declare dso_local i32 @ipath_cdbg(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

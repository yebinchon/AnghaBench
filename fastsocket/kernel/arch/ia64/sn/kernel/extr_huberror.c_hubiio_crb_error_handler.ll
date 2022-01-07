; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_huberror.c_hubiio_crb_error_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_huberror.c_hubiio_crb_error_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubdev_info = type { i32 }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_9__ = type { i64, i32, i64, i32, i8* }
%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_7__ = type { i64, i8* }
%struct.TYPE_6__ = type { i8* }

@IIO_NUM_CRBS = common dso_local global i32 0, align 4
@errortype = common dso_local global i32 0, align 4
@IIO_ICRB_INIT_BTE0 = common dso_local global i32 0, align 4
@IIO_ICRB_INIT_BTE1 = common dso_local global i32 0, align 4
@IIO_ICRB_IMSGT_BTE = common dso_local global i64 0, align 8
@IIO_ICRB_IMSGT_SN1NET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hubiio_crb_error_handler(%struct.hubdev_info* %0) #0 {
  %2 = alloca %struct.hubdev_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__, align 8
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca %struct.TYPE_6__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hubdev_info* %0, %struct.hubdev_info** %2, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.hubdev_info*, %struct.hubdev_info** %2, align 8
  %14 = getelementptr inbounds %struct.hubdev_info, %struct.hubdev_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %3, align 4
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %105, %1
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @IIO_NUM_CRBS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %108

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @IIO_ICRB_B(i32 %22)
  %24 = call i8* @REMOTE_HUB_L(i32 %21, i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 4
  store i8* %24, i8** %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %105

30:                                               ; preds = %20
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @IIO_ICRB_A(i32 %32)
  %34 = call i8* @REMOTE_HUB_L(i32 %31, i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  store i8* %34, i8** %35, align 8
  %36 = call i32 @IOERROR_INIT(i32* %11)
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @IIO_ICRB_C(i32 %38)
  %40 = call i8* @REMOTE_HUB_L(i32 %37, i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  store i8* %40, i8** %41, align 8
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @IIO_ICRB_D(i32 %43)
  %45 = call i8* @REMOTE_HUB_L(i32 %42, i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store i8* %45, i8** %46, align 8
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @IIO_ICRB_E(i32 %48)
  %50 = call i8* @REMOTE_HUB_L(i32 %47, i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i8* %50, i8** %51, align 8
  %52 = load i32, i32* @errortype, align 4
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @IOERROR_SETVALUE(i32* %11, i32 %52, i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %79, label %59

59:                                               ; preds = %30
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @IIO_ICRB_INIT_BTE0, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @IIO_ICRB_INIT_BTE1, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %104

69:                                               ; preds = %64, %59
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @IIO_ICRB_IMSGT_BTE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @IIO_ICRB_IMSGT_SN1NET, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %104

79:                                               ; preds = %74, %69, %30
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %12, align 4
  br label %91

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = and i32 %88, 4
  %90 = ashr i32 %89, 2
  store i32 %90, i32* %12, align 4
  br label %91

91:                                               ; preds = %86, %83
  %92 = load %struct.hubdev_info*, %struct.hubdev_info** %2, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @hubiio_crb_free(%struct.hubdev_info* %92, i32 %93)
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @nasid_to_cnodeid(i32 %95)
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %9, align 4
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @bte_crb_error_handler(i32 %96, i32 %97, i32 %98, i32* %11, i64 %100)
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %105

104:                                              ; preds = %74, %64
  br label %105

105:                                              ; preds = %104, %91, %29
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %9, align 4
  br label %16

108:                                              ; preds = %16
  ret void
}

declare dso_local i8* @REMOTE_HUB_L(i32, i32) #1

declare dso_local i32 @IIO_ICRB_B(i32) #1

declare dso_local i32 @IIO_ICRB_A(i32) #1

declare dso_local i32 @IOERROR_INIT(i32*) #1

declare dso_local i32 @IIO_ICRB_C(i32) #1

declare dso_local i32 @IIO_ICRB_D(i32) #1

declare dso_local i32 @IIO_ICRB_E(i32) #1

declare dso_local i32 @IOERROR_SETVALUE(i32*, i32, i32) #1

declare dso_local i32 @hubiio_crb_free(%struct.hubdev_info*, i32) #1

declare dso_local i32 @bte_crb_error_handler(i32, i32, i32, i32*, i64) #1

declare dso_local i32 @nasid_to_cnodeid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cio.c_cio_validate_subchannel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cio.c_cio_validate_subchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { i32, i32*, %struct.subchannel_id, %struct.TYPE_4__, i32 }
%struct.subchannel_id = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"valsch%x\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Subchannel 0.%x.%04x reports subchannel type %04X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cio_validate_subchannel(%struct.subchannel* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.subchannel_id, align 4
  %5 = alloca %struct.subchannel*, align 8
  %6 = alloca [15 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = bitcast %struct.subchannel_id* %4 to i64*
  store i64 %1, i64* %9, align 4
  store %struct.subchannel* %0, %struct.subchannel** %5, align 8
  %10 = getelementptr inbounds [15 x i8], [15 x i8]* %6, i64 0, i64 0
  %11 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %4, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @sprintf(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = getelementptr inbounds [15 x i8], [15 x i8]* %6, i64 0, i64 0
  %15 = call i32 @CIO_TRACE_EVENT(i32 4, i8* %14)
  %16 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %17 = call i32 @memset(%struct.subchannel* %16, i32 0, i32 32)
  %18 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %19 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %18, i32 0, i32 2
  %20 = bitcast %struct.subchannel_id* %19 to i8*
  %21 = bitcast %struct.subchannel_id* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 4 %21, i64 8, i1 false)
  %22 = bitcast %struct.subchannel_id* %4 to i64*
  %23 = load i64, i64* %22, align 4
  %24 = call i64 @cio_is_console(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = call i32* (...) @cio_get_console_lock()
  %28 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %29 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %28, i32 0, i32 1
  store i32* %27, i32** %29, align 8
  br label %37

30:                                               ; preds = %2
  %31 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %32 = call i32 @cio_create_sch_lock(%struct.subchannel* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %93

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %26
  %38 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %39 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %38, i32 0, i32 4
  %40 = call i32 @mutex_init(i32* %39)
  %41 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %42 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %41, i32 0, i32 3
  %43 = bitcast %struct.subchannel_id* %4 to i64*
  %44 = load i64, i64* %43, align 4
  %45 = call i32 @stsch_err(i64 %44, %struct.TYPE_4__* %42)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %37
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, 3
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* @ENXIO, align 4
  %53 = sub nsw i32 0, %52
  br label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %7, align 4
  br label %56

56:                                               ; preds = %54, %51
  %57 = phi i32 [ %53, %51 ], [ %55, %54 ]
  store i32 %57, i32* %8, align 4
  br label %93

58:                                               ; preds = %37
  %59 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %60 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %65 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %67 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %75 [
    i32 129, label %69
    i32 128, label %72
  ]

69:                                               ; preds = %58
  %70 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %71 = call i32 @cio_validate_io_subchannel(%struct.subchannel* %70)
  store i32 %71, i32* %8, align 4
  br label %76

72:                                               ; preds = %58
  %73 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %74 = call i32 @cio_validate_msg_subchannel(%struct.subchannel* %73)
  store i32 %74, i32* %8, align 4
  br label %76

75:                                               ; preds = %58
  store i32 0, i32* %8, align 4
  br label %76

76:                                               ; preds = %75, %72, %69
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %93

80:                                               ; preds = %76
  %81 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %82 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %86 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %90 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @CIO_MSG_EVENT(i32 4, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %84, i32 %88, i32 %91)
  store i32 0, i32* %3, align 4
  br label %107

93:                                               ; preds = %79, %56, %35
  %94 = bitcast %struct.subchannel_id* %4 to i64*
  %95 = load i64, i64* %94, align 4
  %96 = call i64 @cio_is_console(i64 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  %99 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %100 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @kfree(i32* %101)
  br label %103

103:                                              ; preds = %98, %93
  %104 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %105 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %104, i32 0, i32 1
  store i32* null, i32** %105, align 8
  %106 = load i32, i32* %8, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %103, %80
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @CIO_TRACE_EVENT(i32, i8*) #1

declare dso_local i32 @memset(%struct.subchannel*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @cio_is_console(i64) #1

declare dso_local i32* @cio_get_console_lock(...) #1

declare dso_local i32 @cio_create_sch_lock(%struct.subchannel*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @stsch_err(i64, %struct.TYPE_4__*) #1

declare dso_local i32 @cio_validate_io_subchannel(%struct.subchannel*) #1

declare dso_local i32 @cio_validate_msg_subchannel(%struct.subchannel*) #1

declare dso_local i32 @CIO_MSG_EVENT(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

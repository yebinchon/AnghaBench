; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_file_ops.c_init_subports.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_file_ops.c_init_subports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ipath_portdata = type { i32, i32, i32, i32, i32*, i32*, i32, i32, i8* }
%struct.ipath_user_info = type { i32, i32, i32 }

@IPATH_USER_SWMAJOR = common dso_local global i32 0, align 4
@IPATH_USER_SWMINOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Inconsistent ipath_compatible_subports()\0A\00", align 1
@.str.1 = private unnamed_addr constant [138 x i8] c"Mismatched user version (%d.%d) and driver version (%d.%d) while port sharing. Ensure that driver and library are from the same release.\0A\00", align 1
@INFINIPATH_MAX_SUBPORT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IPATH_PORT_MASTER_UNINIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipath_devdata*, %struct.ipath_portdata*, %struct.ipath_user_info*)* @init_subports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_subports(%struct.ipath_devdata* %0, %struct.ipath_portdata* %1, %struct.ipath_user_info* %2) #0 {
  %4 = alloca %struct.ipath_devdata*, align 8
  %5 = alloca %struct.ipath_portdata*, align 8
  %6 = alloca %struct.ipath_user_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %4, align 8
  store %struct.ipath_portdata* %1, %struct.ipath_portdata** %5, align 8
  store %struct.ipath_user_info* %2, %struct.ipath_user_info** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.ipath_user_info*, %struct.ipath_user_info** %6, align 8
  %11 = getelementptr inbounds %struct.ipath_user_info, %struct.ipath_user_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ule i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %163

15:                                               ; preds = %3
  %16 = load i32, i32* @IPATH_USER_SWMAJOR, align 4
  %17 = load i32, i32* @IPATH_USER_SWMINOR, align 4
  %18 = call i64 @ipath_supports_subports(i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = load i32, i32* @IPATH_USER_SWMAJOR, align 4
  %22 = load i32, i32* @IPATH_USER_SWMINOR, align 4
  %23 = call i32 @ipath_compatible_subports(i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %27 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 (i32*, i8*, ...) @dev_info(i32* %29, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %163

31:                                               ; preds = %20, %15
  %32 = load %struct.ipath_user_info*, %struct.ipath_user_info** %6, align 8
  %33 = getelementptr inbounds %struct.ipath_user_info, %struct.ipath_user_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 16
  %36 = load %struct.ipath_user_info*, %struct.ipath_user_info** %6, align 8
  %37 = getelementptr inbounds %struct.ipath_user_info, %struct.ipath_user_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 65535
  %40 = call i32 @ipath_compatible_subports(i32 %35, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %31
  %43 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %44 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load %struct.ipath_user_info*, %struct.ipath_user_info** %6, align 8
  %48 = getelementptr inbounds %struct.ipath_user_info, %struct.ipath_user_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %49, 16
  %51 = load %struct.ipath_user_info*, %struct.ipath_user_info** %6, align 8
  %52 = getelementptr inbounds %struct.ipath_user_info, %struct.ipath_user_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 65535
  %55 = load i32, i32* @IPATH_USER_SWMAJOR, align 4
  %56 = load i32, i32* @IPATH_USER_SWMINOR, align 4
  %57 = call i32 (i32*, i8*, ...) @dev_info(i32* %46, i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %54, i32 %55, i32 %56)
  br label %163

58:                                               ; preds = %31
  %59 = load %struct.ipath_user_info*, %struct.ipath_user_info** %6, align 8
  %60 = getelementptr inbounds %struct.ipath_user_info, %struct.ipath_user_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @INFINIPATH_MAX_SUBPORT, align 4
  %63 = icmp ugt i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %7, align 4
  br label %163

67:                                               ; preds = %58
  %68 = load %struct.ipath_user_info*, %struct.ipath_user_info** %6, align 8
  %69 = getelementptr inbounds %struct.ipath_user_info, %struct.ipath_user_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* @PAGE_SIZE, align 4
  %72 = load i32, i32* %8, align 4
  %73 = mul i32 %71, %72
  %74 = call i8* @vzalloc(i32 %73)
  %75 = bitcast i8* %74 to i32*
  %76 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %77 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %76, i32 0, i32 4
  store i32* %75, i32** %77, align 8
  %78 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %79 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %78, i32 0, i32 4
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %67
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %7, align 4
  br label %163

85:                                               ; preds = %67
  %86 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %87 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %90 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %88, %91
  %93 = sext i32 %92 to i64
  %94 = mul i64 %93, 4
  %95 = trunc i64 %94 to i32
  %96 = load i32, i32* @PAGE_SIZE, align 4
  %97 = call i32 @ALIGN(i32 %95, i32 %96)
  %98 = load i32, i32* %8, align 4
  %99 = mul i32 %97, %98
  %100 = zext i32 %99 to i64
  store i64 %100, i64* %9, align 8
  %101 = load i64, i64* %9, align 8
  %102 = trunc i64 %101 to i32
  %103 = call i8* @vzalloc(i32 %102)
  %104 = bitcast i8* %103 to i32*
  %105 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %106 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %105, i32 0, i32 5
  store i32* %104, i32** %106, align 8
  %107 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %108 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %107, i32 0, i32 5
  %109 = load i32*, i32** %108, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %85
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %7, align 4
  br label %156

114:                                              ; preds = %85
  %115 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %116 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %119 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = mul i32 %117, %120
  %122 = load i32, i32* %8, align 4
  %123 = mul i32 %121, %122
  %124 = call i8* @vzalloc(i32 %123)
  %125 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %126 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %125, i32 0, i32 8
  store i8* %124, i8** %126, align 8
  %127 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %128 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %127, i32 0, i32 8
  %129 = load i8*, i8** %128, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %114
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %7, align 4
  br label %151

134:                                              ; preds = %114
  %135 = load %struct.ipath_user_info*, %struct.ipath_user_info** %6, align 8
  %136 = getelementptr inbounds %struct.ipath_user_info, %struct.ipath_user_info* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %139 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 8
  %140 = load %struct.ipath_user_info*, %struct.ipath_user_info** %6, align 8
  %141 = getelementptr inbounds %struct.ipath_user_info, %struct.ipath_user_info* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %144 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %143, i32 0, i32 7
  store i32 %142, i32* %144, align 4
  %145 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %146 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %145, i32 0, i32 3
  store i32 1, i32* %146, align 4
  %147 = load i32, i32* @IPATH_PORT_MASTER_UNINIT, align 4
  %148 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %149 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %148, i32 0, i32 6
  %150 = call i32 @set_bit(i32 %147, i32* %149)
  br label %163

151:                                              ; preds = %131
  %152 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %153 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %152, i32 0, i32 5
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @vfree(i32* %154)
  br label %156

156:                                              ; preds = %151, %111
  %157 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %158 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %157, i32 0, i32 4
  %159 = load i32*, i32** %158, align 8
  %160 = call i32 @vfree(i32* %159)
  %161 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %162 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %161, i32 0, i32 4
  store i32* null, i32** %162, align 8
  br label %163

163:                                              ; preds = %156, %134, %82, %64, %42, %25, %14
  %164 = load i32, i32* %7, align 4
  ret i32 %164
}

declare dso_local i64 @ipath_supports_subports(i32, i32) #1

declare dso_local i32 @ipath_compatible_subports(i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i8* @vzalloc(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

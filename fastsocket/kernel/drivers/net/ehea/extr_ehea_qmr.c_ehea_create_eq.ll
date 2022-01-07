; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_qmr.c_ehea_create_eq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_qmr.c_ehea_create_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_eq = type { i32, i32, %struct.TYPE_2__, i32, %struct.ehea_adapter* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.ehea_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"no mem for eq\00", align 1
@H_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"alloc_resource_eq failed\00", align 1
@EHEA_PAGESIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"can't allocate eq pages\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"hw_qpageit_get_inc failed\00", align 1
@H_RESOURCE = common dso_local global i64 0, align 8
@EHEA_EQ_REGISTER_ORIG = common dso_local global i32 0, align 4
@H_PAGE_REGISTERED = common dso_local global i64 0, align 8
@FORCE_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ehea_eq* @ehea_create_eq(%struct.ehea_adapter* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ehea_eq*, align 8
  %6 = alloca %struct.ehea_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.ehea_eq*, align 8
  store %struct.ehea_adapter* %0, %struct.ehea_adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.ehea_eq* @kzalloc(i32 40, i32 %16)
  store %struct.ehea_eq* %17, %struct.ehea_eq** %15, align 8
  %18 = load %struct.ehea_eq*, %struct.ehea_eq** %15, align 8
  %19 = icmp ne %struct.ehea_eq* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = call i32 @ehea_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.ehea_eq* null, %struct.ehea_eq** %5, align 8
  br label %146

22:                                               ; preds = %4
  %23 = load %struct.ehea_adapter*, %struct.ehea_adapter** %6, align 8
  %24 = load %struct.ehea_eq*, %struct.ehea_eq** %15, align 8
  %25 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %24, i32 0, i32 4
  store %struct.ehea_adapter* %23, %struct.ehea_adapter** %25, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.ehea_eq*, %struct.ehea_eq** %15, align 8
  %28 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.ehea_eq*, %struct.ehea_eq** %15, align 8
  %32 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.ehea_eq*, %struct.ehea_eq** %15, align 8
  %36 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 8
  %38 = load %struct.ehea_eq*, %struct.ehea_eq** %15, align 8
  %39 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %38, i32 0, i32 3
  %40 = call i32 @spin_lock_init(i32* %39)
  %41 = load %struct.ehea_adapter*, %struct.ehea_adapter** %6, align 8
  %42 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ehea_eq*, %struct.ehea_eq** %15, align 8
  %45 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %44, i32 0, i32 2
  %46 = load %struct.ehea_eq*, %struct.ehea_eq** %15, align 8
  %47 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %46, i32 0, i32 0
  %48 = call i64 @ehea_h_alloc_resource_eq(i32 %43, %struct.TYPE_2__* %45, i32* %47)
  store i64 %48, i64* %12, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* @H_SUCCESS, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %22
  %53 = call i32 @ehea_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %143

54:                                               ; preds = %22
  %55 = load %struct.ehea_eq*, %struct.ehea_eq** %15, align 8
  %56 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %55, i32 0, i32 1
  %57 = load %struct.ehea_eq*, %struct.ehea_eq** %15, align 8
  %58 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @EHEA_PAGESIZE, align 4
  %62 = call i32 @hw_queue_ctor(i32* %56, i32 %60, i32 %61, i32 4)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %54
  %66 = call i32 @ehea_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %134

67:                                               ; preds = %54
  store i32 0, i32* %11, align 4
  br label %68

68:                                               ; preds = %122, %67
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.ehea_eq*, %struct.ehea_eq** %15, align 8
  %71 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %69, %73
  br i1 %74, label %75, label %125

75:                                               ; preds = %68
  %76 = load %struct.ehea_eq*, %struct.ehea_eq** %15, align 8
  %77 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %76, i32 0, i32 1
  %78 = call i8* @hw_qpageit_get_inc(i32* %77)
  store i8* %78, i8** %14, align 8
  %79 = load i8*, i8** %14, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %75
  %82 = call i32 @ehea_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %83 = load i64, i64* @H_RESOURCE, align 8
  store i64 %83, i64* %12, align 8
  br label %130

84:                                               ; preds = %75
  %85 = load i8*, i8** %14, align 8
  %86 = call i64 @virt_to_abs(i8* %85)
  store i64 %86, i64* %13, align 8
  %87 = load %struct.ehea_adapter*, %struct.ehea_adapter** %6, align 8
  %88 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @EHEA_EQ_REGISTER_ORIG, align 4
  %91 = load %struct.ehea_eq*, %struct.ehea_eq** %15, align 8
  %92 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i64, i64* %13, align 8
  %95 = call i64 @ehea_h_register_rpage(i32 %89, i32 0, i32 %90, i32 %93, i64 %94, i32 1)
  store i64 %95, i64* %12, align 8
  %96 = load i32, i32* %11, align 4
  %97 = load %struct.ehea_eq*, %struct.ehea_eq** %15, align 8
  %98 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %100, 1
  %102 = icmp eq i32 %96, %101
  br i1 %102, label %103, label %115

103:                                              ; preds = %84
  %104 = load %struct.ehea_eq*, %struct.ehea_eq** %15, align 8
  %105 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %104, i32 0, i32 1
  %106 = call i8* @hw_qpageit_get_inc(i32* %105)
  store i8* %106, i8** %14, align 8
  %107 = load i64, i64* %12, align 8
  %108 = load i64, i64* @H_SUCCESS, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %113, label %110

110:                                              ; preds = %103
  %111 = load i8*, i8** %14, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %114

113:                                              ; preds = %110, %103
  br label %130

114:                                              ; preds = %110
  br label %121

115:                                              ; preds = %84
  %116 = load i64, i64* %12, align 8
  %117 = load i64, i64* @H_PAGE_REGISTERED, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  br label %130

120:                                              ; preds = %115
  br label %121

121:                                              ; preds = %120, %114
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %11, align 4
  br label %68

125:                                              ; preds = %68
  %126 = load %struct.ehea_eq*, %struct.ehea_eq** %15, align 8
  %127 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %126, i32 0, i32 1
  %128 = call i32 @hw_qeit_reset(i32* %127)
  %129 = load %struct.ehea_eq*, %struct.ehea_eq** %15, align 8
  store %struct.ehea_eq* %129, %struct.ehea_eq** %5, align 8
  br label %146

130:                                              ; preds = %119, %113, %81
  %131 = load %struct.ehea_eq*, %struct.ehea_eq** %15, align 8
  %132 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %131, i32 0, i32 1
  %133 = call i32 @hw_queue_dtor(i32* %132)
  br label %134

134:                                              ; preds = %130, %65
  %135 = load %struct.ehea_adapter*, %struct.ehea_adapter** %6, align 8
  %136 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.ehea_eq*, %struct.ehea_eq** %15, align 8
  %139 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @FORCE_FREE, align 4
  %142 = call i32 @ehea_h_free_resource(i32 %137, i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %134, %52
  %144 = load %struct.ehea_eq*, %struct.ehea_eq** %15, align 8
  %145 = call i32 @kfree(%struct.ehea_eq* %144)
  store %struct.ehea_eq* null, %struct.ehea_eq** %5, align 8
  br label %146

146:                                              ; preds = %143, %125, %20
  %147 = load %struct.ehea_eq*, %struct.ehea_eq** %5, align 8
  ret %struct.ehea_eq* %147
}

declare dso_local %struct.ehea_eq* @kzalloc(i32, i32) #1

declare dso_local i32 @ehea_error(i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @ehea_h_alloc_resource_eq(i32, %struct.TYPE_2__*, i32*) #1

declare dso_local i32 @hw_queue_ctor(i32*, i32, i32, i32) #1

declare dso_local i8* @hw_qpageit_get_inc(i32*) #1

declare dso_local i64 @virt_to_abs(i8*) #1

declare dso_local i64 @ehea_h_register_rpage(i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @hw_qeit_reset(i32*) #1

declare dso_local i32 @hw_queue_dtor(i32*) #1

declare dso_local i32 @ehea_h_free_resource(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.ehea_eq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

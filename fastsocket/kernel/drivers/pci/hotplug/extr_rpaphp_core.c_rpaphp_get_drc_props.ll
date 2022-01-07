; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_rpaphp_core.c_rpaphp_get_drc_props.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_rpaphp_core.c_rpaphp_get_drc_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"ibm,my-drc-index\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpaphp_get_drc_props(%struct.device_node* %0, i32* %1, i8** %2, i8** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  %21 = load %struct.device_node*, %struct.device_node** %7, align 8
  %22 = call i32* @of_get_property(%struct.device_node* %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32* %22, i32** %16, align 8
  %23 = load i32*, i32** %16, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %109

28:                                               ; preds = %5
  %29 = load %struct.device_node*, %struct.device_node** %7, align 8
  %30 = getelementptr inbounds %struct.device_node, %struct.device_node* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @get_children_props(i32 %31, i32** %12, i32** %13, i32** %14, i32** %15)
  store i32 %32, i32* %20, align 4
  %33 = load i32, i32* %20, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %109

38:                                               ; preds = %28
  %39 = load i32*, i32** %13, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = bitcast i32* %40 to i8*
  store i8* %41, i8** %17, align 8
  %42 = load i32*, i32** %14, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = bitcast i32* %43 to i8*
  store i8* %44, i8** %18, align 8
  store i32 0, i32* %19, align 4
  br label %45

45:                                               ; preds = %103, %38
  %46 = load i32, i32* %19, align 4
  %47 = load i32*, i32** %12, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %106

51:                                               ; preds = %45
  %52 = load i32*, i32** %12, align 8
  %53 = load i32, i32* %19, align 4
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %16, align 8
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %92

61:                                               ; preds = %51
  %62 = load i8**, i8*** %9, align 8
  %63 = icmp ne i8** %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i8*, i8** %17, align 8
  %66 = load i8**, i8*** %9, align 8
  store i8* %65, i8** %66, align 8
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i8**, i8*** %10, align 8
  %69 = icmp ne i8** %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i8*, i8** %18, align 8
  %72 = load i8**, i8*** %10, align 8
  store i8* %71, i8** %72, align 8
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i32*, i32** %8, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32*, i32** %16, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %8, align 8
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %76, %73
  %81 = load i32*, i32** %11, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load i32*, i32** %15, align 8
  %85 = load i32, i32* %19, align 4
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %11, align 8
  store i32 %89, i32* %90, align 4
  br label %91

91:                                               ; preds = %83, %80
  store i32 0, i32* %6, align 4
  br label %109

92:                                               ; preds = %51
  %93 = load i8*, i8** %17, align 8
  %94 = call i64 @strlen(i8* %93)
  %95 = add nsw i64 %94, 1
  %96 = load i8*, i8** %17, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 %95
  store i8* %97, i8** %17, align 8
  %98 = load i8*, i8** %18, align 8
  %99 = call i64 @strlen(i8* %98)
  %100 = add nsw i64 %99, 1
  %101 = load i8*, i8** %18, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 %100
  store i8* %102, i8** %18, align 8
  br label %103

103:                                              ; preds = %92
  %104 = load i32, i32* %19, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %19, align 4
  br label %45

106:                                              ; preds = %45
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %106, %91, %35, %25
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @get_children_props(i32, i32**, i32**, i32**, i32**) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

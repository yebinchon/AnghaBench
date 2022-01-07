; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_reconfig.c_do_update_property.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_reconfig.c_do_update_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.property = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"slb-size\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"ibm,slb-size\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"ibm,dynamic-memory\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@PSERIES_DRCONF_MEM_ADD = common dso_local global i32 0, align 4
@PSERIES_DRCONF_MEM_REMOVE = common dso_local global i32 0, align 4
@pSeries_reconfig_chain = common dso_local global i32 0, align 4
@NOTIFY_BAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @do_update_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_update_property(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.property*, align 8
  %14 = alloca %struct.property*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i8* @parse_node(i8* %16, i64 %17, %struct.device_node** %6)
  store i8* %18, i8** %4, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  store i8* %21, i8** %9, align 8
  %22 = load %struct.device_node*, %struct.device_node** %6, align 8
  %23 = icmp ne %struct.device_node* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %122

27:                                               ; preds = %2
  %28 = load i8*, i8** %4, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = call i8* @parse_next_property(i8* %28, i8* %29, i8** %8, i32* %12, i8** %7)
  store i8* %30, i8** %10, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %122

36:                                               ; preds = %27
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %12, align 4
  %39 = load i8*, i8** %7, align 8
  %40 = call %struct.property* @new_property(i8* %37, i32 %38, i8* %39, i32* null)
  store %struct.property* %40, %struct.property** %13, align 8
  %41 = load %struct.property*, %struct.property** %13, align 8
  %42 = icmp ne %struct.property* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %122

46:                                               ; preds = %36
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %50, %46
  %55 = load i8*, i8** %7, align 8
  %56 = bitcast i8* %55 to i32*
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @slb_set_size(i32 %57)
  br label %59

59:                                               ; preds = %54, %50
  %60 = load %struct.device_node*, %struct.device_node** %6, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = call %struct.property* @of_find_property(%struct.device_node* %60, i8* %61, i32* null)
  store %struct.property* %62, %struct.property** %14, align 8
  %63 = load %struct.property*, %struct.property** %14, align 8
  %64 = icmp ne %struct.property* %63, null
  br i1 %64, label %76, label %65

65:                                               ; preds = %59
  %66 = load i8*, i8** %8, align 8
  %67 = call i64 @strlen(i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load %struct.device_node*, %struct.device_node** %6, align 8
  %71 = load %struct.property*, %struct.property** %13, align 8
  %72 = call i32 @prom_add_property(%struct.device_node* %70, %struct.property* %71)
  store i32 %72, i32* %3, align 4
  br label %122

73:                                               ; preds = %65
  %74 = load i32, i32* @ENODEV, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %122

76:                                               ; preds = %59
  %77 = load %struct.device_node*, %struct.device_node** %6, align 8
  %78 = load %struct.property*, %struct.property** %13, align 8
  %79 = load %struct.property*, %struct.property** %14, align 8
  %80 = call i32 @prom_update_property(%struct.device_node* %77, %struct.property* %78, %struct.property* %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %3, align 4
  br label %122

85:                                               ; preds = %76
  %86 = load i8*, i8** %8, align 8
  %87 = call i32 @strcmp(i8* %86, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %121, label %89

89:                                               ; preds = %85
  %90 = load i8*, i8** %10, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = call i8* @parse_next_property(i8* %90, i8* %91, i8** %8, i32* %12, i8** %7)
  store i8* %92, i8** %10, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %89
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %122

98:                                               ; preds = %89
  %99 = load i8*, i8** %8, align 8
  %100 = call i32 @strcmp(i8* %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %98
  %103 = load i32, i32* @PSERIES_DRCONF_MEM_ADD, align 4
  store i32 %103, i32* %15, align 4
  br label %106

104:                                              ; preds = %98
  %105 = load i32, i32* @PSERIES_DRCONF_MEM_REMOVE, align 4
  store i32 %105, i32* %15, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = load i32, i32* %15, align 4
  %108 = load i8*, i8** %7, align 8
  %109 = call i32 @blocking_notifier_call_chain(i32* @pSeries_reconfig_chain, i32 %107, i8* %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @NOTIFY_BAD, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %106
  %114 = load %struct.device_node*, %struct.device_node** %6, align 8
  %115 = load %struct.property*, %struct.property** %14, align 8
  %116 = load %struct.property*, %struct.property** %13, align 8
  %117 = call i32 @prom_update_property(%struct.device_node* %114, %struct.property* %115, %struct.property* %116)
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %122

120:                                              ; preds = %106
  br label %121

121:                                              ; preds = %120, %85
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %121, %113, %95, %83, %73, %69, %43, %33, %24
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i8* @parse_node(i8*, i64, %struct.device_node**) #1

declare dso_local i8* @parse_next_property(i8*, i8*, i8**, i32*, i8**) #1

declare dso_local %struct.property* @new_property(i8*, i32, i8*, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @slb_set_size(i32) #1

declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @prom_add_property(%struct.device_node*, %struct.property*) #1

declare dso_local i32 @prom_update_property(%struct.device_node*, %struct.property*, %struct.property*) #1

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

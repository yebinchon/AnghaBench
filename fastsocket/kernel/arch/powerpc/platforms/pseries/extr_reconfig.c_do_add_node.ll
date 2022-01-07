; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_reconfig.c_do_add_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_reconfig.c_do_add_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.property = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @do_add_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_add_node(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca %struct.property*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.property*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.property* null, %struct.property** %10, align 8
  store i32 0, i32* %13, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %4, align 8
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i8* @strchr(i8* %19, i8 signext 32)
  store i8* %20, i8** %4, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %82

26:                                               ; preds = %2
  %27 = load i8*, i8** %4, align 8
  store i8 0, i8* %27, align 1
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %4, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call %struct.device_node* @of_find_node_by_path(i8* %30)
  store %struct.device_node* %31, %struct.device_node** %9, align 8
  %32 = icmp ne %struct.device_node* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.device_node*, %struct.device_node** %9, align 8
  %35 = call i32 @of_node_put(%struct.device_node* %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %82

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %63, %38
  %40 = load i8*, i8** %4, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = icmp ult i8* %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i8*, i8** %4, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i8* @parse_next_property(i8* %44, i8* %45, i8** %8, i32* %12, i8** %11)
  store i8* %46, i8** %4, align 8
  %47 = icmp ne i8* %46, null
  br label %48

48:                                               ; preds = %43, %39
  %49 = phi i1 [ false, %39 ], [ %47, %43 ]
  br i1 %49, label %50, label %64

50:                                               ; preds = %48
  %51 = load %struct.property*, %struct.property** %10, align 8
  store %struct.property* %51, %struct.property** %14, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load i8*, i8** %11, align 8
  %55 = load %struct.property*, %struct.property** %14, align 8
  %56 = call %struct.property* @new_property(i8* %52, i32 %53, i8* %54, %struct.property* %55)
  store %struct.property* %56, %struct.property** %10, align 8
  %57 = load %struct.property*, %struct.property** %10, align 8
  %58 = icmp ne %struct.property* %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %50
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %13, align 4
  %62 = load %struct.property*, %struct.property** %14, align 8
  store %struct.property* %62, %struct.property** %10, align 8
  br label %74

63:                                               ; preds = %50
  br label %39

64:                                               ; preds = %48
  %65 = load i8*, i8** %4, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %13, align 4
  br label %74

70:                                               ; preds = %64
  %71 = load i8*, i8** %6, align 8
  %72 = load %struct.property*, %struct.property** %10, align 8
  %73 = call i32 @pSeries_reconfig_add_node(i8* %71, %struct.property* %72)
  store i32 %73, i32* %13, align 4
  br label %74

74:                                               ; preds = %70, %67, %59
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load %struct.property*, %struct.property** %10, align 8
  %79 = call i32 @release_prop_list(%struct.property* %78)
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i32, i32* %13, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %33, %23
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.device_node* @of_find_node_by_path(i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i8* @parse_next_property(i8*, i8*, i8**, i32*, i8**) #1

declare dso_local %struct.property* @new_property(i8*, i32, i8*, %struct.property*) #1

declare dso_local i32 @pSeries_reconfig_add_node(i8*, %struct.property*) #1

declare dso_local i32 @release_prop_list(%struct.property*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_prom_parse.c_of_get_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_prom_parse.c_of_get_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.of_bus = type { i32 (i32*)*, i32, i32 (%struct.device_node.0*, i32*, i32*)* }
%struct.device_node.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @of_get_address(%struct.device_node* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.device_node*, align 8
  %13 = alloca %struct.of_bus*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %struct.device_node*, %struct.device_node** %6, align 8
  %19 = call %struct.device_node* @of_get_parent(%struct.device_node* %18)
  store %struct.device_node* %19, %struct.device_node** %12, align 8
  %20 = load %struct.device_node*, %struct.device_node** %12, align 8
  %21 = icmp eq %struct.device_node* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %97

23:                                               ; preds = %4
  %24 = load %struct.device_node*, %struct.device_node** %12, align 8
  %25 = call %struct.of_bus* @of_match_bus(%struct.device_node* %24)
  store %struct.of_bus* %25, %struct.of_bus** %13, align 8
  %26 = load %struct.of_bus*, %struct.of_bus** %13, align 8
  %27 = getelementptr inbounds %struct.of_bus, %struct.of_bus* %26, i32 0, i32 2
  %28 = load i32 (%struct.device_node.0*, i32*, i32*)*, i32 (%struct.device_node.0*, i32*, i32*)** %27, align 8
  %29 = load %struct.device_node*, %struct.device_node** %6, align 8
  %30 = bitcast %struct.device_node* %29 to %struct.device_node.0*
  %31 = call i32 %28(%struct.device_node.0* %30, i32* %16, i32* %17)
  %32 = load %struct.device_node*, %struct.device_node** %12, align 8
  %33 = call i32 @of_node_put(%struct.device_node* %32)
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* %17, align 4
  %36 = call i32 @OF_CHECK_COUNTS(i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %23
  store i32* null, i32** %5, align 8
  br label %97

39:                                               ; preds = %23
  %40 = load %struct.device_node*, %struct.device_node** %6, align 8
  %41 = load %struct.of_bus*, %struct.of_bus** %13, align 8
  %42 = getelementptr inbounds %struct.of_bus, %struct.of_bus* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32* @of_get_property(%struct.device_node* %40, i32 %43, i32* %11)
  store i32* %44, i32** %10, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32* null, i32** %5, align 8
  br label %97

48:                                               ; preds = %39
  %49 = load i32, i32* %11, align 4
  %50 = udiv i32 %49, 4
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %17, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %54

54:                                               ; preds = %86, %48
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp uge i32 %55, %56
  br i1 %57, label %58, label %96

58:                                               ; preds = %54
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %85

62:                                               ; preds = %58
  %63 = load i32*, i32** %8, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %16, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %17, align 4
  %71 = call i32 @of_read_number(i32* %69, i32 %70)
  %72 = load i32*, i32** %8, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %65, %62
  %74 = load i32*, i32** %9, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load %struct.of_bus*, %struct.of_bus** %13, align 8
  %78 = getelementptr inbounds %struct.of_bus, %struct.of_bus* %77, i32 0, i32 0
  %79 = load i32 (i32*)*, i32 (i32*)** %78, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = call i32 %79(i32* %80)
  %82 = load i32*, i32** %9, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %76, %73
  %84 = load i32*, i32** %10, align 8
  store i32* %84, i32** %5, align 8
  br label %97

85:                                               ; preds = %58
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %11, align 4
  %89 = sub i32 %88, %87
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %14, align 4
  %91 = load i32*, i32** %10, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32* %93, i32** %10, align 8
  %94 = load i32, i32* %15, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %15, align 4
  br label %54

96:                                               ; preds = %54
  store i32* null, i32** %5, align 8
  br label %97

97:                                               ; preds = %96, %83, %47, %38, %22
  %98 = load i32*, i32** %5, align 8
  ret i32* %98
}

declare dso_local %struct.device_node* @of_get_parent(%struct.device_node*) #1

declare dso_local %struct.of_bus* @of_match_bus(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @OF_CHECK_COUNTS(i32, i32) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i32, i32*) #1

declare dso_local i32 @of_read_number(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

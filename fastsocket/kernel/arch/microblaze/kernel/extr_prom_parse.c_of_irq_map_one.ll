; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/extr_prom_parse.c_of_irq_map_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/extr_prom_parse.c_of_irq_map_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.of_irq = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"of_irq_map_one: dev=%s, index=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"interrupts\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c" intspec=%d intlen=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"#interrupt-cells\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c" intsize=%d intlen=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_irq_map_one(%struct.device_node* %0, i32 %1, %struct.of_irq* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.of_irq*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.of_irq* %2, %struct.of_irq** %7, align 8
  %15 = load %struct.device_node*, %struct.device_node** %5, align 8
  %16 = getelementptr inbounds %struct.device_node, %struct.device_node* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = call i32* @of_get_property(%struct.device_node* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  store i32* %21, i32** %9, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %85

27:                                               ; preds = %3
  %28 = load i32, i32* %13, align 4
  %29 = sext i32 %28 to i64
  %30 = udiv i64 %29, 4
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %13, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load %struct.device_node*, %struct.device_node** %5, align 8
  %37 = call i32* @of_get_property(%struct.device_node* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store i32* %37, i32** %11, align 8
  %38 = load %struct.device_node*, %struct.device_node** %5, align 8
  %39 = call %struct.device_node* @of_irq_find_parent(%struct.device_node* %38)
  store %struct.device_node* %39, %struct.device_node** %8, align 8
  %40 = load %struct.device_node*, %struct.device_node** %8, align 8
  %41 = icmp eq %struct.device_node* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %27
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %85

45:                                               ; preds = %27
  %46 = load %struct.device_node*, %struct.device_node** %8, align 8
  %47 = call i32* @of_get_property(%struct.device_node* %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32* null)
  store i32* %47, i32** %10, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.device_node*, %struct.device_node** %8, align 8
  %52 = call i32 @of_node_put(%struct.device_node* %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %85

55:                                               ; preds = %45
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %58, i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  %63 = load i32, i32* %12, align 4
  %64 = mul nsw i32 %62, %63
  %65 = load i32, i32* %13, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %55
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %85

70:                                               ; preds = %55
  %71 = load %struct.device_node*, %struct.device_node** %8, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %12, align 4
  %75 = mul nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %72, i64 %76
  %78 = load i32, i32* %12, align 4
  %79 = load i32*, i32** %11, align 8
  %80 = load %struct.of_irq*, %struct.of_irq** %7, align 8
  %81 = call i32 @of_irq_map_raw(%struct.device_node* %71, i32* %77, i32 %78, i32* %79, %struct.of_irq* %80)
  store i32 %81, i32* %14, align 4
  %82 = load %struct.device_node*, %struct.device_node** %8, align 8
  %83 = call i32 @of_node_put(%struct.device_node* %82)
  %84 = load i32, i32* %14, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %70, %67, %50, %42, %24
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.device_node* @of_irq_find_parent(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @of_irq_map_raw(%struct.device_node*, i32*, i32, i32*, %struct.of_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

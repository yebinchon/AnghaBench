; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_prom_parse.c_of_irq_map_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_prom_parse.c_of_irq_map_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.of_irq = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"of_irq_map_one: dev=%s, index=%d\0A\00", align 1
@of_irq_workarounds = common dso_local global i32 0, align 4
@OF_IMAP_OLDWORLD_MAC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"interrupts\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"#interrupt-cells\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c" intsize=%d intlen=%d\0A\00", align 1

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
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %14, align 4
  %17 = load %struct.device_node*, %struct.device_node** %5, align 8
  %18 = getelementptr inbounds %struct.device_node, %struct.device_node* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @DBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load i32, i32* @of_irq_workarounds, align 4
  %23 = load i32, i32* @OF_IMAP_OLDWORLD_MAC, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load %struct.device_node*, %struct.device_node** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.of_irq*, %struct.of_irq** %7, align 8
  %30 = call i32 @of_irq_map_oldworld(%struct.device_node* %27, i32 %28, %struct.of_irq* %29)
  store i32 %30, i32* %4, align 4
  br label %88

31:                                               ; preds = %3
  %32 = load %struct.device_node*, %struct.device_node** %5, align 8
  %33 = call i32* @of_get_property(%struct.device_node* %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  store i32* %33, i32** %9, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %88

39:                                               ; preds = %31
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = udiv i64 %41, 4
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %13, align 4
  %44 = load %struct.device_node*, %struct.device_node** %5, align 8
  %45 = call i32* @of_get_property(%struct.device_node* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i32* %45, i32** %11, align 8
  %46 = load %struct.device_node*, %struct.device_node** %5, align 8
  %47 = call %struct.device_node* @of_irq_find_parent(%struct.device_node* %46)
  store %struct.device_node* %47, %struct.device_node** %8, align 8
  %48 = load %struct.device_node*, %struct.device_node** %8, align 8
  %49 = icmp eq %struct.device_node* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %39
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %88

53:                                               ; preds = %39
  %54 = load %struct.device_node*, %struct.device_node** %8, align 8
  %55 = call i32* @of_get_property(%struct.device_node* %54, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store i32* %55, i32** %10, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %84

59:                                               ; preds = %53
  %60 = load i32*, i32** %10, align 8
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  %67 = load i32, i32* %12, align 4
  %68 = mul nsw i32 %66, %67
  %69 = load i32, i32* %13, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %59
  br label %84

72:                                               ; preds = %59
  %73 = load %struct.device_node*, %struct.device_node** %8, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %12, align 4
  %77 = mul nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %74, i64 %78
  %80 = load i32, i32* %12, align 4
  %81 = load i32*, i32** %11, align 8
  %82 = load %struct.of_irq*, %struct.of_irq** %7, align 8
  %83 = call i32 @of_irq_map_raw(%struct.device_node* %73, i32* %79, i32 %80, i32* %81, %struct.of_irq* %82)
  store i32 %83, i32* %14, align 4
  br label %84

84:                                               ; preds = %72, %71, %58
  %85 = load %struct.device_node*, %struct.device_node** %8, align 8
  %86 = call i32 @of_node_put(%struct.device_node* %85)
  %87 = load i32, i32* %14, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %84, %50, %36, %26
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @DBG(i8*, i32, i32) #1

declare dso_local i32 @of_irq_map_oldworld(%struct.device_node*, i32, %struct.of_irq*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.device_node* @of_irq_find_parent(%struct.device_node*) #1

declare dso_local i32 @of_irq_map_raw(%struct.device_node*, i32*, i32, i32*, %struct.of_irq*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

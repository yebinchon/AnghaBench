; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpqphp_ctrl.c_bridge_slot_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpqphp_ctrl.c_bridge_slot_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_func = type { i32*, i64, %struct.pci_func* }

@cpqhp_slot_list = common dso_local global %struct.pci_func** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_func*)* @bridge_slot_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bridge_slot_remove(%struct.pci_func* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_func*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pci_func*, align 8
  store %struct.pci_func* %0, %struct.pci_func** %3, align 8
  %8 = load %struct.pci_func*, %struct.pci_func** %3, align 8
  %9 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 6
  %12 = load i32, i32* %11, align 4
  %13 = ashr i32 %12, 8
  %14 = and i32 %13, 255
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %5, align 8
  %16 = load %struct.pci_func*, %struct.pci_func** %3, align 8
  %17 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 6
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 16
  %22 = and i32 %21, 255
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %5, align 8
  store i64 %24, i64* %6, align 8
  br label %25

25:                                               ; preds = %45, %1
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %4, align 8
  %28 = icmp ule i64 %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %25
  %30 = load %struct.pci_func**, %struct.pci_func*** @cpqhp_slot_list, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds %struct.pci_func*, %struct.pci_func** %30, i64 %31
  %33 = load %struct.pci_func*, %struct.pci_func** %32, align 8
  store %struct.pci_func* %33, %struct.pci_func** %7, align 8
  br label %34

34:                                               ; preds = %39, %29
  %35 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %36 = call i32 @slot_remove(%struct.pci_func* %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.pci_func**, %struct.pci_func*** @cpqhp_slot_list, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds %struct.pci_func*, %struct.pci_func** %40, i64 %41
  %43 = load %struct.pci_func*, %struct.pci_func** %42, align 8
  store %struct.pci_func* %43, %struct.pci_func** %7, align 8
  br label %34

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %6, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %6, align 8
  br label %25

48:                                               ; preds = %25
  %49 = load %struct.pci_func**, %struct.pci_func*** @cpqhp_slot_list, align 8
  %50 = load %struct.pci_func*, %struct.pci_func** %3, align 8
  %51 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.pci_func*, %struct.pci_func** %49, i64 %52
  %54 = load %struct.pci_func*, %struct.pci_func** %53, align 8
  store %struct.pci_func* %54, %struct.pci_func** %7, align 8
  %55 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %56 = icmp eq %struct.pci_func* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  store i32 1, i32* %2, align 4
  br label %105

58:                                               ; preds = %48
  %59 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %60 = load %struct.pci_func*, %struct.pci_func** %3, align 8
  %61 = icmp eq %struct.pci_func* %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  %63 = load %struct.pci_func*, %struct.pci_func** %3, align 8
  %64 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %63, i32 0, i32 2
  %65 = load %struct.pci_func*, %struct.pci_func** %64, align 8
  %66 = load %struct.pci_func**, %struct.pci_func*** @cpqhp_slot_list, align 8
  %67 = load %struct.pci_func*, %struct.pci_func** %3, align 8
  %68 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.pci_func*, %struct.pci_func** %66, i64 %69
  store %struct.pci_func* %65, %struct.pci_func** %70, align 8
  br label %102

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %85, %71
  %73 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %74 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %73, i32 0, i32 2
  %75 = load %struct.pci_func*, %struct.pci_func** %74, align 8
  %76 = load %struct.pci_func*, %struct.pci_func** %3, align 8
  %77 = icmp ne %struct.pci_func* %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %80 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %79, i32 0, i32 2
  %81 = load %struct.pci_func*, %struct.pci_func** %80, align 8
  %82 = icmp ne %struct.pci_func* %81, null
  br label %83

83:                                               ; preds = %78, %72
  %84 = phi i1 [ false, %72 ], [ %82, %78 ]
  br i1 %84, label %85, label %89

85:                                               ; preds = %83
  %86 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %87 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %86, i32 0, i32 2
  %88 = load %struct.pci_func*, %struct.pci_func** %87, align 8
  store %struct.pci_func* %88, %struct.pci_func** %7, align 8
  br label %72

89:                                               ; preds = %83
  %90 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %91 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %90, i32 0, i32 2
  %92 = load %struct.pci_func*, %struct.pci_func** %91, align 8
  %93 = load %struct.pci_func*, %struct.pci_func** %3, align 8
  %94 = icmp ne %struct.pci_func* %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  store i32 2, i32* %2, align 4
  br label %105

96:                                               ; preds = %89
  %97 = load %struct.pci_func*, %struct.pci_func** %3, align 8
  %98 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %97, i32 0, i32 2
  %99 = load %struct.pci_func*, %struct.pci_func** %98, align 8
  %100 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %101 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %100, i32 0, i32 2
  store %struct.pci_func* %99, %struct.pci_func** %101, align 8
  br label %102

102:                                              ; preds = %96, %62
  %103 = load %struct.pci_func*, %struct.pci_func** %3, align 8
  %104 = call i32 @kfree(%struct.pci_func* %103)
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %102, %95, %57
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @slot_remove(%struct.pci_func*) #1

declare dso_local i32 @kfree(%struct.pci_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

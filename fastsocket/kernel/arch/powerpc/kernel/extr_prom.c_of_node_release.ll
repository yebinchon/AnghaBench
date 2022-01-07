; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_prom.c_of_node_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_prom.c_of_node_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kref = type { i32 }
%struct.device_node = type { %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.device_node*, i32, %struct.device_node* }
%struct.property = type { %struct.property*, %struct.property*, %struct.property*, %struct.property*, %struct.property*, %struct.property*, i32, %struct.property* }

@OF_DETACHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"WARNING: Bad of_node_put() on %s\0A\00", align 1
@OF_DYNAMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kref*)* @of_node_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @of_node_release(%struct.kref* %0) #0 {
  %2 = alloca %struct.kref*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.property*, align 8
  %5 = alloca %struct.property*, align 8
  store %struct.kref* %0, %struct.kref** %2, align 8
  %6 = load %struct.kref*, %struct.kref** %2, align 8
  %7 = call %struct.property* @kref_to_device_node(%struct.kref* %6)
  %8 = bitcast %struct.property* %7 to %struct.device_node*
  store %struct.device_node* %8, %struct.device_node** %3, align 8
  %9 = load %struct.device_node*, %struct.device_node** %3, align 8
  %10 = getelementptr inbounds %struct.device_node, %struct.device_node* %9, i32 0, i32 7
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  %12 = bitcast %struct.device_node* %11 to %struct.property*
  store %struct.property* %12, %struct.property** %4, align 8
  %13 = load %struct.device_node*, %struct.device_node** %3, align 8
  %14 = bitcast %struct.device_node* %13 to %struct.property*
  %15 = load i32, i32* @OF_DETACHED, align 4
  %16 = call i32 @of_node_check_flag(%struct.property* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %1
  %19 = load %struct.device_node*, %struct.device_node** %3, align 8
  %20 = getelementptr inbounds %struct.device_node, %struct.device_node* %19, i32 0, i32 1
  %21 = load %struct.device_node*, %struct.device_node** %20, align 8
  %22 = bitcast %struct.device_node* %21 to %struct.property*
  %23 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.property* %22)
  %24 = call i32 (...) @dump_stack()
  %25 = load %struct.device_node*, %struct.device_node** %3, align 8
  %26 = getelementptr inbounds %struct.device_node, %struct.device_node* %25, i32 0, i32 6
  %27 = call i32 @kref_init(i32* %26)
  br label %78

28:                                               ; preds = %1
  %29 = load %struct.device_node*, %struct.device_node** %3, align 8
  %30 = bitcast %struct.device_node* %29 to %struct.property*
  %31 = load i32, i32* @OF_DYNAMIC, align 4
  %32 = call i32 @of_node_check_flag(%struct.property* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %78

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %63, %35
  %37 = load %struct.property*, %struct.property** %4, align 8
  %38 = icmp ne %struct.property* %37, null
  br i1 %38, label %39, label %64

39:                                               ; preds = %36
  %40 = load %struct.property*, %struct.property** %4, align 8
  %41 = getelementptr inbounds %struct.property, %struct.property* %40, i32 0, i32 5
  %42 = load %struct.property*, %struct.property** %41, align 8
  store %struct.property* %42, %struct.property** %5, align 8
  %43 = load %struct.property*, %struct.property** %4, align 8
  %44 = getelementptr inbounds %struct.property, %struct.property* %43, i32 0, i32 4
  %45 = load %struct.property*, %struct.property** %44, align 8
  %46 = call i32 @kfree(%struct.property* %45)
  %47 = load %struct.property*, %struct.property** %4, align 8
  %48 = getelementptr inbounds %struct.property, %struct.property* %47, i32 0, i32 3
  %49 = load %struct.property*, %struct.property** %48, align 8
  %50 = call i32 @kfree(%struct.property* %49)
  %51 = load %struct.property*, %struct.property** %4, align 8
  %52 = call i32 @kfree(%struct.property* %51)
  %53 = load %struct.property*, %struct.property** %5, align 8
  store %struct.property* %53, %struct.property** %4, align 8
  %54 = load %struct.property*, %struct.property** %4, align 8
  %55 = icmp ne %struct.property* %54, null
  br i1 %55, label %63, label %56

56:                                               ; preds = %39
  %57 = load %struct.device_node*, %struct.device_node** %3, align 8
  %58 = getelementptr inbounds %struct.device_node, %struct.device_node* %57, i32 0, i32 2
  %59 = load %struct.device_node*, %struct.device_node** %58, align 8
  %60 = bitcast %struct.device_node* %59 to %struct.property*
  store %struct.property* %60, %struct.property** %4, align 8
  %61 = load %struct.device_node*, %struct.device_node** %3, align 8
  %62 = getelementptr inbounds %struct.device_node, %struct.device_node* %61, i32 0, i32 2
  store %struct.device_node* null, %struct.device_node** %62, align 8
  br label %63

63:                                               ; preds = %56, %39
  br label %36

64:                                               ; preds = %36
  %65 = load %struct.device_node*, %struct.device_node** %3, align 8
  %66 = getelementptr inbounds %struct.device_node, %struct.device_node* %65, i32 0, i32 1
  %67 = load %struct.device_node*, %struct.device_node** %66, align 8
  %68 = bitcast %struct.device_node* %67 to %struct.property*
  %69 = call i32 @kfree(%struct.property* %68)
  %70 = load %struct.device_node*, %struct.device_node** %3, align 8
  %71 = getelementptr inbounds %struct.device_node, %struct.device_node* %70, i32 0, i32 0
  %72 = load %struct.device_node*, %struct.device_node** %71, align 8
  %73 = bitcast %struct.device_node* %72 to %struct.property*
  %74 = call i32 @kfree(%struct.property* %73)
  %75 = load %struct.device_node*, %struct.device_node** %3, align 8
  %76 = bitcast %struct.device_node* %75 to %struct.property*
  %77 = call i32 @kfree(%struct.property* %76)
  br label %78

78:                                               ; preds = %64, %34, %18
  ret void
}

declare dso_local %struct.property* @kref_to_device_node(%struct.kref*) #1

declare dso_local i32 @of_node_check_flag(%struct.property*, i32) #1

declare dso_local i32 @printk(i8*, %struct.property*) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @kfree(%struct.property*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

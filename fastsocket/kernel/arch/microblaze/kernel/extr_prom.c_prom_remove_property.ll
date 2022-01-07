; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/extr_prom.c_prom_remove_property.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/extr_prom.c_prom_remove_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i64, %struct.property*, %struct.property* }
%struct.property = type { %struct.property* }

@devtree_lock = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prom_remove_property(%struct.device_node* %0, %struct.property* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.property*, align 8
  %6 = alloca %struct.property**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.property* %1, %struct.property** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load i64, i64* %7, align 8
  %10 = call i32 @write_lock_irqsave(i32* @devtree_lock, i64 %9)
  %11 = load %struct.device_node*, %struct.device_node** %4, align 8
  %12 = getelementptr inbounds %struct.device_node, %struct.device_node* %11, i32 0, i32 2
  store %struct.property** %12, %struct.property*** %6, align 8
  br label %13

13:                                               ; preds = %35, %2
  %14 = load %struct.property**, %struct.property*** %6, align 8
  %15 = load %struct.property*, %struct.property** %14, align 8
  %16 = icmp ne %struct.property* %15, null
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = load %struct.property**, %struct.property*** %6, align 8
  %19 = load %struct.property*, %struct.property** %18, align 8
  %20 = load %struct.property*, %struct.property** %5, align 8
  %21 = icmp eq %struct.property* %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = load %struct.property*, %struct.property** %5, align 8
  %24 = getelementptr inbounds %struct.property, %struct.property* %23, i32 0, i32 0
  %25 = load %struct.property*, %struct.property** %24, align 8
  %26 = load %struct.property**, %struct.property*** %6, align 8
  store %struct.property* %25, %struct.property** %26, align 8
  %27 = load %struct.device_node*, %struct.device_node** %4, align 8
  %28 = getelementptr inbounds %struct.device_node, %struct.device_node* %27, i32 0, i32 1
  %29 = load %struct.property*, %struct.property** %28, align 8
  %30 = load %struct.property*, %struct.property** %5, align 8
  %31 = getelementptr inbounds %struct.property, %struct.property* %30, i32 0, i32 0
  store %struct.property* %29, %struct.property** %31, align 8
  %32 = load %struct.property*, %struct.property** %5, align 8
  %33 = load %struct.device_node*, %struct.device_node** %4, align 8
  %34 = getelementptr inbounds %struct.device_node, %struct.device_node* %33, i32 0, i32 1
  store %struct.property* %32, %struct.property** %34, align 8
  store i32 1, i32* %8, align 4
  br label %39

35:                                               ; preds = %17
  %36 = load %struct.property**, %struct.property*** %6, align 8
  %37 = load %struct.property*, %struct.property** %36, align 8
  %38 = getelementptr inbounds %struct.property, %struct.property* %37, i32 0, i32 0
  store %struct.property** %38, %struct.property*** %6, align 8
  br label %13

39:                                               ; preds = %22, %13
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @write_unlock_irqrestore(i32* @devtree_lock, i64 %40)
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %48

47:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

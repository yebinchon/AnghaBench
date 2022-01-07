; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/extr_prom.c_prom_update_property.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/extr_prom.c_prom_update_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i64, %struct.property*, %struct.property* }
%struct.property = type { %struct.property* }

@devtree_lock = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prom_update_property(%struct.device_node* %0, %struct.property* %1, %struct.property* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.property*, align 8
  %7 = alloca %struct.property*, align 8
  %8 = alloca %struct.property**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store %struct.property* %1, %struct.property** %6, align 8
  store %struct.property* %2, %struct.property** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load i64, i64* %9, align 8
  %12 = call i32 @write_lock_irqsave(i32* @devtree_lock, i64 %11)
  %13 = load %struct.device_node*, %struct.device_node** %5, align 8
  %14 = getelementptr inbounds %struct.device_node, %struct.device_node* %13, i32 0, i32 2
  store %struct.property** %14, %struct.property*** %8, align 8
  br label %15

15:                                               ; preds = %40, %3
  %16 = load %struct.property**, %struct.property*** %8, align 8
  %17 = load %struct.property*, %struct.property** %16, align 8
  %18 = icmp ne %struct.property* %17, null
  br i1 %18, label %19, label %44

19:                                               ; preds = %15
  %20 = load %struct.property**, %struct.property*** %8, align 8
  %21 = load %struct.property*, %struct.property** %20, align 8
  %22 = load %struct.property*, %struct.property** %7, align 8
  %23 = icmp eq %struct.property* %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %19
  %25 = load %struct.property*, %struct.property** %7, align 8
  %26 = getelementptr inbounds %struct.property, %struct.property* %25, i32 0, i32 0
  %27 = load %struct.property*, %struct.property** %26, align 8
  %28 = load %struct.property*, %struct.property** %6, align 8
  %29 = getelementptr inbounds %struct.property, %struct.property* %28, i32 0, i32 0
  store %struct.property* %27, %struct.property** %29, align 8
  %30 = load %struct.property*, %struct.property** %6, align 8
  %31 = load %struct.property**, %struct.property*** %8, align 8
  store %struct.property* %30, %struct.property** %31, align 8
  %32 = load %struct.device_node*, %struct.device_node** %5, align 8
  %33 = getelementptr inbounds %struct.device_node, %struct.device_node* %32, i32 0, i32 1
  %34 = load %struct.property*, %struct.property** %33, align 8
  %35 = load %struct.property*, %struct.property** %7, align 8
  %36 = getelementptr inbounds %struct.property, %struct.property* %35, i32 0, i32 0
  store %struct.property* %34, %struct.property** %36, align 8
  %37 = load %struct.property*, %struct.property** %7, align 8
  %38 = load %struct.device_node*, %struct.device_node** %5, align 8
  %39 = getelementptr inbounds %struct.device_node, %struct.device_node* %38, i32 0, i32 1
  store %struct.property* %37, %struct.property** %39, align 8
  store i32 1, i32* %10, align 4
  br label %44

40:                                               ; preds = %19
  %41 = load %struct.property**, %struct.property*** %8, align 8
  %42 = load %struct.property*, %struct.property** %41, align 8
  %43 = getelementptr inbounds %struct.property, %struct.property* %42, i32 0, i32 0
  store %struct.property** %43, %struct.property*** %8, align 8
  br label %15

44:                                               ; preds = %24, %15
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @write_unlock_irqrestore(i32* @devtree_lock, i64 %45)
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %53

52:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %49
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/extr_prom.c_prom_add_property.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/extr_prom.c_prom_add_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i64, %struct.property* }
%struct.property = type { %struct.property*, i32 }

@devtree_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prom_add_property(%struct.device_node* %0, %struct.property* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.property*, align 8
  %6 = alloca %struct.property**, align 8
  %7 = alloca i64, align 8
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.property* %1, %struct.property** %5, align 8
  %8 = load %struct.property*, %struct.property** %5, align 8
  %9 = getelementptr inbounds %struct.property, %struct.property* %8, i32 0, i32 0
  store %struct.property* null, %struct.property** %9, align 8
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @write_lock_irqsave(i32* @devtree_lock, i64 %10)
  %12 = load %struct.device_node*, %struct.device_node** %4, align 8
  %13 = getelementptr inbounds %struct.device_node, %struct.device_node* %12, i32 0, i32 1
  store %struct.property** %13, %struct.property*** %6, align 8
  br label %14

14:                                               ; preds = %31, %2
  %15 = load %struct.property**, %struct.property*** %6, align 8
  %16 = load %struct.property*, %struct.property** %15, align 8
  %17 = icmp ne %struct.property* %16, null
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = load %struct.property*, %struct.property** %5, align 8
  %20 = getelementptr inbounds %struct.property, %struct.property* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.property**, %struct.property*** %6, align 8
  %23 = load %struct.property*, %struct.property** %22, align 8
  %24 = getelementptr inbounds %struct.property, %struct.property* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @strcmp(i32 %21, i32 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @write_unlock_irqrestore(i32* @devtree_lock, i64 %29)
  store i32 -1, i32* %3, align 4
  br label %40

31:                                               ; preds = %18
  %32 = load %struct.property**, %struct.property*** %6, align 8
  %33 = load %struct.property*, %struct.property** %32, align 8
  %34 = getelementptr inbounds %struct.property, %struct.property* %33, i32 0, i32 0
  store %struct.property** %34, %struct.property*** %6, align 8
  br label %14

35:                                               ; preds = %14
  %36 = load %struct.property*, %struct.property** %5, align 8
  %37 = load %struct.property**, %struct.property*** %6, align 8
  store %struct.property* %36, %struct.property** %37, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @write_unlock_irqrestore(i32* @devtree_lock, i64 %38)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %35, %28
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

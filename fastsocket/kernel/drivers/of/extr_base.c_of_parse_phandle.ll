; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/of/extr_base.c_of_parse_phandle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/of/extr_base.c_of_parse_phandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device_node* @of_parse_phandle(%struct.device_node* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.device_node*, %struct.device_node** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32* @of_get_property(%struct.device_node* %10, i8* %11, i32* %9)
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = mul i64 4, %20
  %22 = icmp ult i64 %17, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15, %3
  store %struct.device_node* null, %struct.device_node** %4, align 8
  br label %31

24:                                               ; preds = %15
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.device_node* @of_find_node_by_phandle(i32 %29)
  store %struct.device_node* %30, %struct.device_node** %4, align 8
  br label %31

31:                                               ; preds = %24, %23
  %32 = load %struct.device_node*, %struct.device_node** %4, align 8
  ret %struct.device_node* %32
}

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.device_node* @of_find_node_by_phandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

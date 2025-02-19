; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_vio.c_add_string_property.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_vio.c_add_string_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.property = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, i8*, i8*)* @add_string_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_string_property(%struct.device_node* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.property*, align 8
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call i64 @strlen(i8* %10)
  %12 = add nsw i64 %11, 1
  %13 = load i8*, i8** %7, align 8
  %14 = call %struct.property* @new_property(i8* %9, i64 %12, i8* %13)
  store %struct.property* %14, %struct.property** %8, align 8
  %15 = load %struct.property*, %struct.property** %8, align 8
  %16 = icmp ne %struct.property* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %22

18:                                               ; preds = %3
  %19 = load %struct.device_node*, %struct.device_node** %5, align 8
  %20 = load %struct.property*, %struct.property** %8, align 8
  %21 = call i32 @prom_add_property(%struct.device_node* %19, %struct.property* %20)
  store i32 1, i32* %4, align 4
  br label %22

22:                                               ; preds = %18, %17
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local %struct.property* @new_property(i8*, i64, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @prom_add_property(%struct.device_node*, %struct.property*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

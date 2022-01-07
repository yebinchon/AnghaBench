; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_class.c_add_class_attrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_class.c_add_class_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.class = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.class*)* @add_class_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_class_attrs(%struct.class* %0) #0 {
  %2 = alloca %struct.class*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.class* %0, %struct.class** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.class*, %struct.class** %2, align 8
  %6 = getelementptr inbounds %struct.class, %struct.class* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %37

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %33, %9
  %11 = load %struct.class*, %struct.class** %2, align 8
  %12 = getelementptr inbounds %struct.class, %struct.class* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @attr_name(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %10
  %21 = load %struct.class*, %struct.class** %2, align 8
  %22 = load %struct.class*, %struct.class** %2, align 8
  %23 = getelementptr inbounds %struct.class, %struct.class* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = call i32 @class_create_file(%struct.class* %21, i32* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %40

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %10

36:                                               ; preds = %10
  br label %37

37:                                               ; preds = %36, %1
  br label %38

38:                                               ; preds = %54, %37
  %39 = load i32, i32* %4, align 4
  ret i32 %39

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %45, %40
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %3, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load %struct.class*, %struct.class** %2, align 8
  %47 = load %struct.class*, %struct.class** %2, align 8
  %48 = getelementptr inbounds %struct.class, %struct.class* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = call i32 @class_remove_file(%struct.class* %46, i32* %52)
  br label %41

54:                                               ; preds = %41
  br label %38
}

declare dso_local i64 @attr_name(i32) #1

declare dso_local i32 @class_create_file(%struct.class*, i32*) #1

declare dso_local i32 @class_remove_file(%struct.class*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

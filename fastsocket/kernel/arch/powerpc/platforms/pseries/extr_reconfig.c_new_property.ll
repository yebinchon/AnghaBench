; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_reconfig.c_new_property.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_reconfig.c_new_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.property = type { i32, %struct.property*, %struct.property*, %struct.property* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.property* (i8*, i32, i8*, %struct.property*)* @new_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.property* @new_property(i8* %0, i32 %1, i8* %2, %struct.property* %3) #0 {
  %5 = alloca %struct.property*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.property*, align 8
  %10 = alloca %struct.property*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.property* %3, %struct.property** %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.property* @kzalloc(i32 32, i32 %11)
  store %struct.property* %12, %struct.property** %10, align 8
  %13 = load %struct.property*, %struct.property** %10, align 8
  %14 = icmp ne %struct.property* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store %struct.property* null, %struct.property** %5, align 8
  br label %74

16:                                               ; preds = %4
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = add nsw i32 %18, 1
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @kmalloc(i32 %19, i32 %20)
  %22 = bitcast i8* %21 to %struct.property*
  %23 = load %struct.property*, %struct.property** %10, align 8
  %24 = getelementptr inbounds %struct.property, %struct.property* %23, i32 0, i32 2
  store %struct.property* %22, %struct.property** %24, align 8
  %25 = icmp ne %struct.property* %22, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %16
  br label %63

27:                                               ; preds = %16
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kmalloc(i32 %29, i32 %30)
  %32 = bitcast i8* %31 to %struct.property*
  %33 = load %struct.property*, %struct.property** %10, align 8
  %34 = getelementptr inbounds %struct.property, %struct.property* %33, i32 0, i32 1
  store %struct.property* %32, %struct.property** %34, align 8
  %35 = icmp ne %struct.property* %32, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %27
  br label %63

37:                                               ; preds = %27
  %38 = load %struct.property*, %struct.property** %10, align 8
  %39 = getelementptr inbounds %struct.property, %struct.property* %38, i32 0, i32 2
  %40 = load %struct.property*, %struct.property** %39, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @strcpy(%struct.property* %40, i8* %41)
  %43 = load %struct.property*, %struct.property** %10, align 8
  %44 = getelementptr inbounds %struct.property, %struct.property* %43, i32 0, i32 1
  %45 = load %struct.property*, %struct.property** %44, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @memcpy(%struct.property* %45, i8* %46, i32 %47)
  %49 = load %struct.property*, %struct.property** %10, align 8
  %50 = getelementptr inbounds %struct.property, %struct.property* %49, i32 0, i32 1
  %51 = load %struct.property*, %struct.property** %50, align 8
  %52 = bitcast %struct.property* %51 to i8*
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  store i8 0, i8* %55, align 1
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.property*, %struct.property** %10, align 8
  %58 = getelementptr inbounds %struct.property, %struct.property* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.property*, %struct.property** %9, align 8
  %60 = load %struct.property*, %struct.property** %10, align 8
  %61 = getelementptr inbounds %struct.property, %struct.property* %60, i32 0, i32 3
  store %struct.property* %59, %struct.property** %61, align 8
  %62 = load %struct.property*, %struct.property** %10, align 8
  store %struct.property* %62, %struct.property** %5, align 8
  br label %74

63:                                               ; preds = %36, %26
  %64 = load %struct.property*, %struct.property** %10, align 8
  %65 = getelementptr inbounds %struct.property, %struct.property* %64, i32 0, i32 2
  %66 = load %struct.property*, %struct.property** %65, align 8
  %67 = call i32 @kfree(%struct.property* %66)
  %68 = load %struct.property*, %struct.property** %10, align 8
  %69 = getelementptr inbounds %struct.property, %struct.property* %68, i32 0, i32 1
  %70 = load %struct.property*, %struct.property** %69, align 8
  %71 = call i32 @kfree(%struct.property* %70)
  %72 = load %struct.property*, %struct.property** %10, align 8
  %73 = call i32 @kfree(%struct.property* %72)
  store %struct.property* null, %struct.property** %5, align 8
  br label %74

74:                                               ; preds = %63, %37, %15
  %75 = load %struct.property*, %struct.property** %5, align 8
  ret %struct.property* %75
}

declare dso_local %struct.property* @kzalloc(i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(%struct.property*, i8*) #1

declare dso_local i32 @memcpy(%struct.property*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.property*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

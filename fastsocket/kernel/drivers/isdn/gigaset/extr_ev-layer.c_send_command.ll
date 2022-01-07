; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_ev-layer.c_send_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_ev-layer.c_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.cardstate*, i8*, i64, i32*)* }

@.str = private unnamed_addr constant [28 x i8] c"integer overflow in buflen\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cardstate*, i8*, i32, i32, i32)* @send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_command(%struct.cardstate* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.cardstate*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.cardstate* %0, %struct.cardstate** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = call i64 @strlen(i8* %16)
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %11, align 8
  %19 = add i64 11, %18
  store i64 %19, i64* %12, align 8
  %20 = load i64, i64* %12, align 8
  %21 = load i64, i64* %11, align 8
  %22 = icmp ule i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %5
  %27 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %28 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %109

31:                                               ; preds = %5
  %32 = load i64, i64* %12, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i8* @kmalloc(i64 %32, i32 %33)
  store i8* %34, i8** %14, align 8
  %35 = load i8*, i8** %14, align 8
  %36 = icmp ne i8* %35, null
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %31
  %42 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %43 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %109

46:                                               ; preds = %31
  %47 = load i8*, i8** %14, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 9
  store i8* %48, i8** %13, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = load i64, i64* %11, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8* %51, i8** %15, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load i64, i64* %11, align 8
  %55 = call i32 @memcpy(i8* %52, i8* %53, i64 %54)
  %56 = load i32, i32* %8, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %46
  %59 = load i32, i32* %8, align 4
  %60 = icmp sle i32 %59, 65535
  br i1 %60, label %61, label %77

61:                                               ; preds = %58
  br label %62

62:                                               ; preds = %73, %61
  %63 = load i32, i32* %8, align 4
  %64 = srem i32 %63, 10
  %65 = add nsw i32 48, %64
  %66 = trunc i32 %65 to i8
  %67 = load i8*, i8** %13, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 -1
  store i8* %68, i8** %13, align 8
  store i8 %66, i8* %68, align 1
  %69 = load i32, i32* %8, align 4
  %70 = sdiv i32 %69, 10
  store i32 %70, i32* %8, align 4
  %71 = load i64, i64* %11, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %11, align 8
  br label %73

73:                                               ; preds = %62
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %62, label %76

76:                                               ; preds = %73
  br label %77

77:                                               ; preds = %76, %58, %46
  %78 = load i64, i64* %11, align 8
  %79 = add i64 %78, 2
  store i64 %79, i64* %11, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 -1
  store i8* %81, i8** %13, align 8
  store i8 84, i8* %81, align 1
  %82 = load i8*, i8** %13, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 -1
  store i8* %83, i8** %13, align 8
  store i8 65, i8* %83, align 1
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %77
  %87 = load i64, i64* %11, align 8
  %88 = add i64 %87, 4
  store i64 %88, i64* %11, align 8
  %89 = load i8*, i8** %13, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 -1
  store i8* %90, i8** %13, align 8
  store i8 40, i8* %90, align 1
  %91 = load i8*, i8** %13, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 -1
  store i8* %92, i8** %13, align 8
  store i8 16, i8* %92, align 1
  %93 = load i8*, i8** %15, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %15, align 8
  store i8 16, i8* %93, align 1
  %95 = load i8*, i8** %15, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %15, align 8
  store i8 41, i8* %95, align 1
  br label %97

97:                                               ; preds = %86, %77
  %98 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %99 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32 (%struct.cardstate*, i8*, i64, i32*)*, i32 (%struct.cardstate*, i8*, i64, i32*)** %101, align 8
  %103 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %104 = load i8*, i8** %13, align 8
  %105 = load i64, i64* %11, align 8
  %106 = call i32 %102(%struct.cardstate* %103, i8* %104, i64 %105, i32* null)
  %107 = load i8*, i8** %14, align 8
  %108 = call i32 @kfree(i8* %107)
  br label %109

109:                                              ; preds = %97, %41, %26
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

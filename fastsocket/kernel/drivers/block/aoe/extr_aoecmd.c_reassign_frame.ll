; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_reassign_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_reassign_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame = type { %struct.sk_buff*, i32, i32, i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.frame* (%struct.frame*)* @reassign_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.frame* @reassign_frame(%struct.frame* %0) #0 {
  %2 = alloca %struct.frame*, align 8
  %3 = alloca %struct.frame*, align 8
  %4 = alloca %struct.frame*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.frame* %0, %struct.frame** %3, align 8
  %6 = load %struct.frame*, %struct.frame** %3, align 8
  %7 = getelementptr inbounds %struct.frame, %struct.frame* %6, i32 0, i32 10
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.frame* @newframe(i32 %10)
  store %struct.frame* %11, %struct.frame** %4, align 8
  %12 = load %struct.frame*, %struct.frame** %4, align 8
  %13 = icmp ne %struct.frame* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store %struct.frame* null, %struct.frame** %2, align 8
  br label %81

15:                                               ; preds = %1
  %16 = load %struct.frame*, %struct.frame** %4, align 8
  %17 = getelementptr inbounds %struct.frame, %struct.frame* %16, i32 0, i32 10
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load %struct.frame*, %struct.frame** %3, align 8
  %20 = getelementptr inbounds %struct.frame, %struct.frame* %19, i32 0, i32 10
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp eq %struct.TYPE_2__* %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load %struct.frame*, %struct.frame** %4, align 8
  %25 = call i32 @aoe_freetframe(%struct.frame* %24)
  store %struct.frame* null, %struct.frame** %2, align 8
  br label %81

26:                                               ; preds = %15
  %27 = load %struct.frame*, %struct.frame** %4, align 8
  %28 = getelementptr inbounds %struct.frame, %struct.frame* %27, i32 0, i32 0
  %29 = load %struct.sk_buff*, %struct.sk_buff** %28, align 8
  store %struct.sk_buff* %29, %struct.sk_buff** %5, align 8
  %30 = load %struct.frame*, %struct.frame** %3, align 8
  %31 = getelementptr inbounds %struct.frame, %struct.frame* %30, i32 0, i32 0
  %32 = load %struct.sk_buff*, %struct.sk_buff** %31, align 8
  %33 = load %struct.frame*, %struct.frame** %4, align 8
  %34 = getelementptr inbounds %struct.frame, %struct.frame* %33, i32 0, i32 0
  store %struct.sk_buff* %32, %struct.sk_buff** %34, align 8
  %35 = load %struct.frame*, %struct.frame** %3, align 8
  %36 = getelementptr inbounds %struct.frame, %struct.frame* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.frame*, %struct.frame** %4, align 8
  %39 = getelementptr inbounds %struct.frame, %struct.frame* %38, i32 0, i32 9
  store i32 %37, i32* %39, align 8
  %40 = load %struct.frame*, %struct.frame** %3, align 8
  %41 = getelementptr inbounds %struct.frame, %struct.frame* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.frame*, %struct.frame** %4, align 8
  %44 = getelementptr inbounds %struct.frame, %struct.frame* %43, i32 0, i32 8
  store i32 %42, i32* %44, align 4
  %45 = load %struct.frame*, %struct.frame** %3, align 8
  %46 = getelementptr inbounds %struct.frame, %struct.frame* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.frame*, %struct.frame** %4, align 8
  %49 = getelementptr inbounds %struct.frame, %struct.frame* %48, i32 0, i32 7
  store i32 %47, i32* %49, align 8
  %50 = load %struct.frame*, %struct.frame** %3, align 8
  %51 = getelementptr inbounds %struct.frame, %struct.frame* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.frame*, %struct.frame** %4, align 8
  %54 = getelementptr inbounds %struct.frame, %struct.frame* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 4
  %55 = load %struct.frame*, %struct.frame** %3, align 8
  %56 = getelementptr inbounds %struct.frame, %struct.frame* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.frame*, %struct.frame** %4, align 8
  %59 = getelementptr inbounds %struct.frame, %struct.frame* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 8
  %60 = load %struct.frame*, %struct.frame** %4, align 8
  %61 = getelementptr inbounds %struct.frame, %struct.frame* %60, i32 0, i32 4
  store i64 0, i64* %61, align 8
  %62 = load %struct.frame*, %struct.frame** %3, align 8
  %63 = getelementptr inbounds %struct.frame, %struct.frame* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.frame*, %struct.frame** %4, align 8
  %66 = getelementptr inbounds %struct.frame, %struct.frame* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load %struct.frame*, %struct.frame** %3, align 8
  %68 = getelementptr inbounds %struct.frame, %struct.frame* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.frame*, %struct.frame** %4, align 8
  %71 = getelementptr inbounds %struct.frame, %struct.frame* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load %struct.frame*, %struct.frame** %3, align 8
  %73 = getelementptr inbounds %struct.frame, %struct.frame* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.frame*, %struct.frame** %4, align 8
  %76 = getelementptr inbounds %struct.frame, %struct.frame* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %78 = load %struct.frame*, %struct.frame** %3, align 8
  %79 = getelementptr inbounds %struct.frame, %struct.frame* %78, i32 0, i32 0
  store %struct.sk_buff* %77, %struct.sk_buff** %79, align 8
  %80 = load %struct.frame*, %struct.frame** %4, align 8
  store %struct.frame* %80, %struct.frame** %2, align 8
  br label %81

81:                                               ; preds = %26, %23, %14
  %82 = load %struct.frame*, %struct.frame** %2, align 8
  ret %struct.frame* %82
}

declare dso_local %struct.frame* @newframe(i32) #1

declare dso_local i32 @aoe_freetframe(%struct.frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

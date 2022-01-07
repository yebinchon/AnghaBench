; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppoe.c___get_item.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppoe.c___get_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pppox_sock = type { i32, %struct.pppox_sock*, i32 }
%struct.pppoe_net = type { %struct.pppox_sock** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pppox_sock* (%struct.pppoe_net*, i32, i8*, i32)* @__get_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pppox_sock* @__get_item(%struct.pppoe_net* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.pppox_sock*, align 8
  %6 = alloca %struct.pppoe_net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pppox_sock*, align 8
  store %struct.pppoe_net* %0, %struct.pppoe_net** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = call i32 @hash_item(i32 %12, i8* %13)
  store i32 %14, i32* %10, align 4
  %15 = load %struct.pppoe_net*, %struct.pppoe_net** %6, align 8
  %16 = getelementptr inbounds %struct.pppoe_net, %struct.pppoe_net* %15, i32 0, i32 0
  %17 = load %struct.pppox_sock**, %struct.pppox_sock*** %16, align 8
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.pppox_sock*, %struct.pppox_sock** %17, i64 %19
  %21 = load %struct.pppox_sock*, %struct.pppox_sock** %20, align 8
  store %struct.pppox_sock* %21, %struct.pppox_sock** %11, align 8
  br label %22

22:                                               ; preds = %40, %4
  %23 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %24 = icmp ne %struct.pppox_sock* %23, null
  br i1 %24, label %25, label %44

25:                                               ; preds = %22
  %26 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %27 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %26, i32 0, i32 2
  %28 = load i32, i32* %7, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = call i64 @cmp_addr(i32* %27, i32 %28, i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %34 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  store %struct.pppox_sock* %39, %struct.pppox_sock** %5, align 8
  br label %45

40:                                               ; preds = %32, %25
  %41 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %42 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %41, i32 0, i32 1
  %43 = load %struct.pppox_sock*, %struct.pppox_sock** %42, align 8
  store %struct.pppox_sock* %43, %struct.pppox_sock** %11, align 8
  br label %22

44:                                               ; preds = %22
  store %struct.pppox_sock* null, %struct.pppox_sock** %5, align 8
  br label %45

45:                                               ; preds = %44, %38
  %46 = load %struct.pppox_sock*, %struct.pppox_sock** %5, align 8
  ret %struct.pppox_sock* %46
}

declare dso_local i32 @hash_item(i32, i8*) #1

declare dso_local i64 @cmp_addr(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

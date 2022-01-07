; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppoe.c___set_item.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppoe.c___set_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pppoe_net = type { %struct.pppox_sock** }
%struct.pppox_sock = type { i64, %struct.pppox_sock*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@EALREADY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pppoe_net*, %struct.pppox_sock*)* @__set_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__set_item(%struct.pppoe_net* %0, %struct.pppox_sock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pppoe_net*, align 8
  %5 = alloca %struct.pppox_sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pppox_sock*, align 8
  store %struct.pppoe_net* %0, %struct.pppoe_net** %4, align 8
  store %struct.pppox_sock* %1, %struct.pppox_sock** %5, align 8
  %8 = load %struct.pppox_sock*, %struct.pppox_sock** %5, align 8
  %9 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.pppox_sock*, %struct.pppox_sock** %5, align 8
  %13 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @hash_item(i32 %11, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.pppoe_net*, %struct.pppoe_net** %4, align 8
  %18 = getelementptr inbounds %struct.pppoe_net, %struct.pppoe_net* %17, i32 0, i32 0
  %19 = load %struct.pppox_sock**, %struct.pppox_sock*** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.pppox_sock*, %struct.pppox_sock** %19, i64 %21
  %23 = load %struct.pppox_sock*, %struct.pppox_sock** %22, align 8
  store %struct.pppox_sock* %23, %struct.pppox_sock** %7, align 8
  br label %24

24:                                               ; preds = %45, %2
  %25 = load %struct.pppox_sock*, %struct.pppox_sock** %7, align 8
  %26 = icmp ne %struct.pppox_sock* %25, null
  br i1 %26, label %27, label %49

27:                                               ; preds = %24
  %28 = load %struct.pppox_sock*, %struct.pppox_sock** %7, align 8
  %29 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %28, i32 0, i32 2
  %30 = load %struct.pppox_sock*, %struct.pppox_sock** %5, align 8
  %31 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %30, i32 0, i32 2
  %32 = call i64 @cmp_2_addr(%struct.TYPE_3__* %29, %struct.TYPE_3__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %27
  %35 = load %struct.pppox_sock*, %struct.pppox_sock** %7, align 8
  %36 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.pppox_sock*, %struct.pppox_sock** %5, align 8
  %39 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* @EALREADY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %66

45:                                               ; preds = %34, %27
  %46 = load %struct.pppox_sock*, %struct.pppox_sock** %7, align 8
  %47 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %46, i32 0, i32 1
  %48 = load %struct.pppox_sock*, %struct.pppox_sock** %47, align 8
  store %struct.pppox_sock* %48, %struct.pppox_sock** %7, align 8
  br label %24

49:                                               ; preds = %24
  %50 = load %struct.pppoe_net*, %struct.pppoe_net** %4, align 8
  %51 = getelementptr inbounds %struct.pppoe_net, %struct.pppoe_net* %50, i32 0, i32 0
  %52 = load %struct.pppox_sock**, %struct.pppox_sock*** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.pppox_sock*, %struct.pppox_sock** %52, i64 %54
  %56 = load %struct.pppox_sock*, %struct.pppox_sock** %55, align 8
  %57 = load %struct.pppox_sock*, %struct.pppox_sock** %5, align 8
  %58 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %57, i32 0, i32 1
  store %struct.pppox_sock* %56, %struct.pppox_sock** %58, align 8
  %59 = load %struct.pppox_sock*, %struct.pppox_sock** %5, align 8
  %60 = load %struct.pppoe_net*, %struct.pppoe_net** %4, align 8
  %61 = getelementptr inbounds %struct.pppoe_net, %struct.pppoe_net* %60, i32 0, i32 0
  %62 = load %struct.pppox_sock**, %struct.pppox_sock*** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.pppox_sock*, %struct.pppox_sock** %62, i64 %64
  store %struct.pppox_sock* %59, %struct.pppox_sock** %65, align 8
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %49, %42
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @hash_item(i32, i32) #1

declare dso_local i64 @cmp_2_addr(%struct.TYPE_3__*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

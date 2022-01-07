; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ppp_generic.c_ppp_connect_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ppp_generic.c_ppp_connect_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel = type { i32, %struct.ppp*, i32, %struct.TYPE_4__, i32 }
%struct.ppp = type { %struct.TYPE_6__, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.ppp_net = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.channel*, i32)* @ppp_connect_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppp_connect_channel(%struct.channel* %0, i32 %1) #0 {
  %3 = alloca %struct.channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ppp*, align 8
  %6 = alloca %struct.ppp_net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.channel* %0, %struct.channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @ENXIO, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %7, align 4
  %11 = load %struct.channel*, %struct.channel** %3, align 8
  %12 = getelementptr inbounds %struct.channel, %struct.channel* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.ppp_net* @ppp_pernet(i32 %13)
  store %struct.ppp_net* %14, %struct.ppp_net** %6, align 8
  %15 = load %struct.ppp_net*, %struct.ppp_net** %6, align 8
  %16 = getelementptr inbounds %struct.ppp_net, %struct.ppp_net* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.ppp_net*, %struct.ppp_net** %6, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call %struct.ppp* @ppp_find_unit(%struct.ppp_net* %18, i32 %19)
  store %struct.ppp* %20, %struct.ppp** %5, align 8
  %21 = load %struct.ppp*, %struct.ppp** %5, align 8
  %22 = icmp ne %struct.ppp* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %98

24:                                               ; preds = %2
  %25 = load %struct.channel*, %struct.channel** %3, align 8
  %26 = getelementptr inbounds %struct.channel, %struct.channel* %25, i32 0, i32 0
  %27 = call i32 @write_lock_bh(i32* %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  %30 = load %struct.channel*, %struct.channel** %3, align 8
  %31 = getelementptr inbounds %struct.channel, %struct.channel* %30, i32 0, i32 1
  %32 = load %struct.ppp*, %struct.ppp** %31, align 8
  %33 = icmp ne %struct.ppp* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %94

35:                                               ; preds = %24
  %36 = load %struct.ppp*, %struct.ppp** %5, align 8
  %37 = call i32 @ppp_lock(%struct.ppp* %36)
  %38 = load %struct.channel*, %struct.channel** %3, align 8
  %39 = getelementptr inbounds %struct.channel, %struct.channel* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ppp*, %struct.ppp** %5, align 8
  %43 = getelementptr inbounds %struct.ppp, %struct.ppp* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %41, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %35
  %48 = load %struct.channel*, %struct.channel** %3, align 8
  %49 = getelementptr inbounds %struct.channel, %struct.channel* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ppp*, %struct.ppp** %5, align 8
  %53 = getelementptr inbounds %struct.ppp, %struct.ppp* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i64 %51, i64* %54, align 8
  br label %55

55:                                               ; preds = %47, %35
  %56 = load %struct.channel*, %struct.channel** %3, align 8
  %57 = getelementptr inbounds %struct.channel, %struct.channel* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 2
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.ppp*, %struct.ppp** %5, align 8
  %64 = getelementptr inbounds %struct.ppp, %struct.ppp* %63, i32 0, i32 3
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp sgt i32 %62, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %55
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.ppp*, %struct.ppp** %5, align 8
  %72 = getelementptr inbounds %struct.ppp, %struct.ppp* %71, i32 0, i32 3
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store i32 %70, i32* %74, align 4
  br label %75

75:                                               ; preds = %69, %55
  %76 = load %struct.channel*, %struct.channel** %3, align 8
  %77 = getelementptr inbounds %struct.channel, %struct.channel* %76, i32 0, i32 2
  %78 = load %struct.ppp*, %struct.ppp** %5, align 8
  %79 = getelementptr inbounds %struct.ppp, %struct.ppp* %78, i32 0, i32 2
  %80 = call i32 @list_add_tail(i32* %77, i32* %79)
  %81 = load %struct.ppp*, %struct.ppp** %5, align 8
  %82 = getelementptr inbounds %struct.ppp, %struct.ppp* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 8
  %85 = load %struct.ppp*, %struct.ppp** %5, align 8
  %86 = load %struct.channel*, %struct.channel** %3, align 8
  %87 = getelementptr inbounds %struct.channel, %struct.channel* %86, i32 0, i32 1
  store %struct.ppp* %85, %struct.ppp** %87, align 8
  %88 = load %struct.ppp*, %struct.ppp** %5, align 8
  %89 = getelementptr inbounds %struct.ppp, %struct.ppp* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = call i32 @atomic_inc(i32* %90)
  %92 = load %struct.ppp*, %struct.ppp** %5, align 8
  %93 = call i32 @ppp_unlock(%struct.ppp* %92)
  store i32 0, i32* %7, align 4
  br label %94

94:                                               ; preds = %75, %34
  %95 = load %struct.channel*, %struct.channel** %3, align 8
  %96 = getelementptr inbounds %struct.channel, %struct.channel* %95, i32 0, i32 0
  %97 = call i32 @write_unlock_bh(i32* %96)
  br label %98

98:                                               ; preds = %94, %23
  %99 = load %struct.ppp_net*, %struct.ppp_net** %6, align 8
  %100 = getelementptr inbounds %struct.ppp_net, %struct.ppp_net* %99, i32 0, i32 0
  %101 = call i32 @mutex_unlock(i32* %100)
  %102 = load i32, i32* %7, align 4
  ret i32 %102
}

declare dso_local %struct.ppp_net* @ppp_pernet(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ppp* @ppp_find_unit(%struct.ppp_net*, i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @ppp_lock(%struct.ppp*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ppp_unlock(%struct.ppp*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

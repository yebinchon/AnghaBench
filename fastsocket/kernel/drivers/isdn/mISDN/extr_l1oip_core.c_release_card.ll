; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_l1oip_core.c_release_card.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_l1oip_core.c_release_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l1oip = type { i64, i32, %struct.TYPE_2__*, i32, i64, i64, i32, i32 }
%struct.TYPE_2__ = type { i64, %struct.l1oip*, %struct.l1oip* }

@l1oip_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l1oip*)* @release_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_card(%struct.l1oip* %0) #0 {
  %2 = alloca %struct.l1oip*, align 8
  %3 = alloca i32, align 4
  store %struct.l1oip* %0, %struct.l1oip** %2, align 8
  %4 = load %struct.l1oip*, %struct.l1oip** %2, align 8
  %5 = getelementptr inbounds %struct.l1oip, %struct.l1oip* %4, i32 0, i32 7
  %6 = call i64 @timer_pending(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.l1oip*, %struct.l1oip** %2, align 8
  %10 = getelementptr inbounds %struct.l1oip, %struct.l1oip* %9, i32 0, i32 7
  %11 = call i32 @del_timer(i32* %10)
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.l1oip*, %struct.l1oip** %2, align 8
  %14 = getelementptr inbounds %struct.l1oip, %struct.l1oip* %13, i32 0, i32 6
  %15 = call i64 @timer_pending(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.l1oip*, %struct.l1oip** %2, align 8
  %19 = getelementptr inbounds %struct.l1oip, %struct.l1oip* %18, i32 0, i32 6
  %20 = call i32 @del_timer(i32* %19)
  br label %21

21:                                               ; preds = %17, %12
  %22 = load %struct.l1oip*, %struct.l1oip** %2, align 8
  %23 = getelementptr inbounds %struct.l1oip, %struct.l1oip* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.l1oip*, %struct.l1oip** %2, align 8
  %28 = call i32 @l1oip_socket_close(%struct.l1oip* %27)
  br label %29

29:                                               ; preds = %26, %21
  %30 = load %struct.l1oip*, %struct.l1oip** %2, align 8
  %31 = getelementptr inbounds %struct.l1oip, %struct.l1oip* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %29
  %35 = load %struct.l1oip*, %struct.l1oip** %2, align 8
  %36 = getelementptr inbounds %struct.l1oip, %struct.l1oip* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load %struct.l1oip*, %struct.l1oip** %2, align 8
  %39 = getelementptr inbounds %struct.l1oip, %struct.l1oip* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load %struct.l1oip*, %struct.l1oip** %42, align 8
  %44 = icmp ne %struct.l1oip* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %34
  %46 = load %struct.l1oip*, %struct.l1oip** %2, align 8
  %47 = getelementptr inbounds %struct.l1oip, %struct.l1oip* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load %struct.l1oip*, %struct.l1oip** %2, align 8
  %50 = getelementptr inbounds %struct.l1oip, %struct.l1oip* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load %struct.l1oip*, %struct.l1oip** %53, align 8
  %55 = getelementptr inbounds %struct.l1oip, %struct.l1oip* %54, i32 0, i32 3
  %56 = call i32 @mISDN_unregister_device(i32* %55)
  br label %57

57:                                               ; preds = %45, %34, %29
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %120, %57
  %59 = load i32, i32* %3, align 4
  %60 = icmp slt i32 %59, 128
  br i1 %60, label %61, label %123

61:                                               ; preds = %58
  %62 = load %struct.l1oip*, %struct.l1oip** %2, align 8
  %63 = getelementptr inbounds %struct.l1oip, %struct.l1oip* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load %struct.l1oip*, %struct.l1oip** %68, align 8
  %70 = icmp ne %struct.l1oip* %69, null
  br i1 %70, label %71, label %90

71:                                               ; preds = %61
  %72 = load %struct.l1oip*, %struct.l1oip** %2, align 8
  %73 = getelementptr inbounds %struct.l1oip, %struct.l1oip* %72, i32 0, i32 2
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load %struct.l1oip*, %struct.l1oip** %78, align 8
  %80 = call i32 @mISDN_freedchannel(%struct.l1oip* %79)
  %81 = load %struct.l1oip*, %struct.l1oip** %2, align 8
  %82 = getelementptr inbounds %struct.l1oip, %struct.l1oip* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = load %struct.l1oip*, %struct.l1oip** %87, align 8
  %89 = call i32 @kfree(%struct.l1oip* %88)
  br label %90

90:                                               ; preds = %71, %61
  %91 = load %struct.l1oip*, %struct.l1oip** %2, align 8
  %92 = getelementptr inbounds %struct.l1oip, %struct.l1oip* %91, i32 0, i32 2
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load %struct.l1oip*, %struct.l1oip** %97, align 8
  %99 = icmp ne %struct.l1oip* %98, null
  br i1 %99, label %100, label %119

100:                                              ; preds = %90
  %101 = load %struct.l1oip*, %struct.l1oip** %2, align 8
  %102 = getelementptr inbounds %struct.l1oip, %struct.l1oip* %101, i32 0, i32 2
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i32, i32* %3, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load %struct.l1oip*, %struct.l1oip** %107, align 8
  %109 = call i32 @mISDN_freebchannel(%struct.l1oip* %108)
  %110 = load %struct.l1oip*, %struct.l1oip** %2, align 8
  %111 = getelementptr inbounds %struct.l1oip, %struct.l1oip* %110, i32 0, i32 2
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = load i32, i32* %3, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load %struct.l1oip*, %struct.l1oip** %116, align 8
  %118 = call i32 @kfree(%struct.l1oip* %117)
  br label %119

119:                                              ; preds = %100, %90
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %3, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %3, align 4
  br label %58

123:                                              ; preds = %58
  %124 = call i32 @spin_lock(i32* @l1oip_lock)
  %125 = load %struct.l1oip*, %struct.l1oip** %2, align 8
  %126 = getelementptr inbounds %struct.l1oip, %struct.l1oip* %125, i32 0, i32 1
  %127 = call i32 @list_del(i32* %126)
  %128 = call i32 @spin_unlock(i32* @l1oip_lock)
  %129 = load %struct.l1oip*, %struct.l1oip** %2, align 8
  %130 = call i32 @kfree(%struct.l1oip* %129)
  ret void
}

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @l1oip_socket_close(%struct.l1oip*) #1

declare dso_local i32 @mISDN_unregister_device(i32*) #1

declare dso_local i32 @mISDN_freedchannel(%struct.l1oip*) #1

declare dso_local i32 @kfree(%struct.l1oip*) #1

declare dso_local i32 @mISDN_freebchannel(%struct.l1oip*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

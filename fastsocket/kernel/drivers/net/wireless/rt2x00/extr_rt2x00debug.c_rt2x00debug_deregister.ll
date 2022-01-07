; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00debug.c_rt2x00debug_deregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00debug.c_rt2x00debug_deregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.rt2x00debug_intf* }
%struct.rt2x00debug_intf = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.rt2x00debug_intf* }
%struct.TYPE_3__ = type { %struct.rt2x00debug_intf* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00debug_deregister(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca %struct.rt2x00debug_intf*, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %4 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %5 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %4, i32 0, i32 0
  %6 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %5, align 8
  store %struct.rt2x00debug_intf* %6, %struct.rt2x00debug_intf** %3, align 8
  %7 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %3, align 8
  %8 = icmp ne %struct.rt2x00debug_intf* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %108

14:                                               ; preds = %1
  %15 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %3, align 8
  %16 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %15, i32 0, i32 22
  %17 = call i32 @skb_queue_purge(i32* %16)
  %18 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %3, align 8
  %19 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %18, i32 0, i32 20
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @debugfs_remove(i32 %20)
  %22 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %3, align 8
  %23 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %22, i32 0, i32 19
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @debugfs_remove(i32 %24)
  %26 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %3, align 8
  %27 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %26, i32 0, i32 18
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @debugfs_remove(i32 %28)
  %30 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %3, align 8
  %31 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %30, i32 0, i32 17
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @debugfs_remove(i32 %32)
  %34 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %3, align 8
  %35 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %34, i32 0, i32 16
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @debugfs_remove(i32 %36)
  %38 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %3, align 8
  %39 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %38, i32 0, i32 15
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @debugfs_remove(i32 %40)
  %42 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %3, align 8
  %43 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %42, i32 0, i32 14
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @debugfs_remove(i32 %44)
  %46 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %3, align 8
  %47 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %46, i32 0, i32 13
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @debugfs_remove(i32 %48)
  %50 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %3, align 8
  %51 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %50, i32 0, i32 12
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @debugfs_remove(i32 %52)
  %54 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %3, align 8
  %55 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %54, i32 0, i32 11
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @debugfs_remove(i32 %56)
  %58 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %3, align 8
  %59 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %58, i32 0, i32 10
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @debugfs_remove(i32 %60)
  %62 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %3, align 8
  %63 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %62, i32 0, i32 9
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @debugfs_remove(i32 %64)
  %66 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %3, align 8
  %67 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %66, i32 0, i32 8
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @debugfs_remove(i32 %68)
  %70 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %3, align 8
  %71 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @debugfs_remove(i32 %72)
  %74 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %3, align 8
  %75 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @debugfs_remove(i32 %76)
  %78 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %3, align 8
  %79 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @debugfs_remove(i32 %80)
  %82 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %3, align 8
  %83 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @debugfs_remove(i32 %84)
  %86 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %3, align 8
  %87 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @debugfs_remove(i32 %88)
  %90 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %3, align 8
  %91 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @debugfs_remove(i32 %92)
  %94 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %3, align 8
  %95 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %96, align 8
  %98 = call i32 @kfree(%struct.rt2x00debug_intf* %97)
  %99 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %3, align 8
  %100 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %101, align 8
  %103 = call i32 @kfree(%struct.rt2x00debug_intf* %102)
  %104 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %3, align 8
  %105 = call i32 @kfree(%struct.rt2x00debug_intf* %104)
  %106 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %107 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %106, i32 0, i32 0
  store %struct.rt2x00debug_intf* null, %struct.rt2x00debug_intf** %107, align 8
  br label %108

108:                                              ; preds = %14, %13
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @debugfs_remove(i32) #1

declare dso_local i32 @kfree(%struct.rt2x00debug_intf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

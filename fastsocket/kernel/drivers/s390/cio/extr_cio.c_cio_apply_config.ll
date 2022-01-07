; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cio.c_cio_apply_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cio.c_cio_apply_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.schib = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.subchannel*, %struct.schib*)* @cio_apply_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cio_apply_config(%struct.subchannel* %0, %struct.schib* %1) #0 {
  %3 = alloca %struct.subchannel*, align 8
  %4 = alloca %struct.schib*, align 8
  store %struct.subchannel* %0, %struct.subchannel** %3, align 8
  store %struct.schib* %1, %struct.schib** %4, align 8
  %5 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %6 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 8
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.schib*, %struct.schib** %4, align 8
  %10 = getelementptr inbounds %struct.schib, %struct.schib* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 7
  store i32 %8, i32* %11, align 8
  %12 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %13 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.schib*, %struct.schib** %4, align 8
  %17 = getelementptr inbounds %struct.schib, %struct.schib* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 6
  store i32 %15, i32* %18, align 4
  %19 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %20 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.schib*, %struct.schib** %4, align 8
  %24 = getelementptr inbounds %struct.schib, %struct.schib* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 5
  store i32 %22, i32* %25, align 8
  %26 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %27 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.schib*, %struct.schib** %4, align 8
  %31 = getelementptr inbounds %struct.schib, %struct.schib* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 4
  store i32 %29, i32* %32, align 4
  %33 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %34 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.schib*, %struct.schib** %4, align 8
  %38 = getelementptr inbounds %struct.schib, %struct.schib* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  store i32 %36, i32* %39, align 8
  %40 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %41 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.schib*, %struct.schib** %4, align 8
  %45 = getelementptr inbounds %struct.schib, %struct.schib* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  store i32 %43, i32* %46, align 4
  %47 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %48 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.schib*, %struct.schib** %4, align 8
  %52 = getelementptr inbounds %struct.schib, %struct.schib* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 8
  %54 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %55 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.schib*, %struct.schib** %4, align 8
  %59 = getelementptr inbounds %struct.schib, %struct.schib* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i64 %57, i64* %60, align 8
  %61 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %62 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %2
  %67 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %68 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.schib*, %struct.schib** %4, align 8
  %72 = getelementptr inbounds %struct.schib, %struct.schib* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %66, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

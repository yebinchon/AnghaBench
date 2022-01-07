; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_main.c_release_ipwireless.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_main.c_release_ipwireless.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_dev = type { i32, i32, i64, i32, i64, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_dev*)* @release_ipwireless to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_ipwireless(%struct.ipw_dev* %0) #0 {
  %2 = alloca %struct.ipw_dev*, align 8
  store %struct.ipw_dev* %0, %struct.ipw_dev** %2, align 8
  %3 = load %struct.ipw_dev*, %struct.ipw_dev** %2, align 8
  %4 = getelementptr inbounds %struct.ipw_dev, %struct.ipw_dev* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @pcmcia_disable_device(i32 %5)
  %7 = load %struct.ipw_dev*, %struct.ipw_dev** %2, align 8
  %8 = getelementptr inbounds %struct.ipw_dev, %struct.ipw_dev* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load %struct.ipw_dev*, %struct.ipw_dev** %2, align 8
  %13 = getelementptr inbounds %struct.ipw_dev, %struct.ipw_dev* %12, i32 0, i32 6
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ipw_dev*, %struct.ipw_dev** %2, align 8
  %17 = getelementptr inbounds %struct.ipw_dev, %struct.ipw_dev* %16, i32 0, i32 6
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @release_mem_region(i32 %15, i32 %19)
  %21 = load %struct.ipw_dev*, %struct.ipw_dev** %2, align 8
  %22 = getelementptr inbounds %struct.ipw_dev, %struct.ipw_dev* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @iounmap(i64 %23)
  br label %25

25:                                               ; preds = %11, %1
  %26 = load %struct.ipw_dev*, %struct.ipw_dev** %2, align 8
  %27 = getelementptr inbounds %struct.ipw_dev, %struct.ipw_dev* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  %31 = load %struct.ipw_dev*, %struct.ipw_dev** %2, align 8
  %32 = getelementptr inbounds %struct.ipw_dev, %struct.ipw_dev* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ipw_dev*, %struct.ipw_dev** %2, align 8
  %36 = getelementptr inbounds %struct.ipw_dev, %struct.ipw_dev* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @release_mem_region(i32 %34, i32 %38)
  %40 = load %struct.ipw_dev*, %struct.ipw_dev** %2, align 8
  %41 = getelementptr inbounds %struct.ipw_dev, %struct.ipw_dev* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @iounmap(i64 %42)
  br label %44

44:                                               ; preds = %30, %25
  %45 = load %struct.ipw_dev*, %struct.ipw_dev** %2, align 8
  %46 = getelementptr inbounds %struct.ipw_dev, %struct.ipw_dev* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.ipw_dev*, %struct.ipw_dev** %2, align 8
  %51 = getelementptr inbounds %struct.ipw_dev, %struct.ipw_dev* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @pcmcia_release_window(i32 %52)
  br label %54

54:                                               ; preds = %49, %44
  %55 = load %struct.ipw_dev*, %struct.ipw_dev** %2, align 8
  %56 = getelementptr inbounds %struct.ipw_dev, %struct.ipw_dev* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.ipw_dev*, %struct.ipw_dev** %2, align 8
  %61 = getelementptr inbounds %struct.ipw_dev, %struct.ipw_dev* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @pcmcia_release_window(i32 %62)
  br label %64

64:                                               ; preds = %59, %54
  %65 = load %struct.ipw_dev*, %struct.ipw_dev** %2, align 8
  %66 = getelementptr inbounds %struct.ipw_dev, %struct.ipw_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @pcmcia_disable_device(i32 %67)
  ret void
}

declare dso_local i32 @pcmcia_disable_device(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @pcmcia_release_window(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

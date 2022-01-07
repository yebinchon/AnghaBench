; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_lock_fs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_lock_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32, i32*, i32 }

@DMF_FROZEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mapped_device*)* @lock_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lock_fs(%struct.mapped_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mapped_device*, align 8
  %4 = alloca i32, align 4
  store %struct.mapped_device* %0, %struct.mapped_device** %3, align 8
  %5 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %6 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = call i32 @WARN_ON(i32* %7)
  %9 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %10 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32* @freeze_bdev(i32 %11)
  %13 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %14 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %13, i32 0, i32 1
  store i32* %12, i32** %14, align 8
  %15 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %16 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = call i64 @IS_ERR(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %22 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @PTR_ERR(i32* %23)
  store i32 %24, i32* %4, align 4
  %25 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %26 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %25, i32 0, i32 1
  store i32* null, i32** %26, align 8
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %33

28:                                               ; preds = %1
  %29 = load i32, i32* @DMF_FROZEN, align 4
  %30 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %31 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %30, i32 0, i32 0
  %32 = call i32 @set_bit(i32 %29, i32* %31)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %28, %20
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @WARN_ON(i32*) #1

declare dso_local i32* @freeze_bdev(i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

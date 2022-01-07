; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_viotape.c_get_dev_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_viotape.c_get_dev_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.viot_devinfo_struct = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_dev_info(%struct.inode* %0, %struct.viot_devinfo_struct* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.viot_devinfo_struct*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.viot_devinfo_struct* %1, %struct.viot_devinfo_struct** %4, align 8
  %5 = load %struct.inode*, %struct.inode** %3, align 8
  %6 = call i32 @iminor(%struct.inode* %5)
  %7 = and i32 %6, 31
  %8 = load %struct.viot_devinfo_struct*, %struct.viot_devinfo_struct** %4, align 8
  %9 = getelementptr inbounds %struct.viot_devinfo_struct, %struct.viot_devinfo_struct* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = call i32 @iminor(%struct.inode* %10)
  %12 = and i32 %11, 96
  %13 = ashr i32 %12, 5
  %14 = load %struct.viot_devinfo_struct*, %struct.viot_devinfo_struct** %4, align 8
  %15 = getelementptr inbounds %struct.viot_devinfo_struct, %struct.viot_devinfo_struct* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = call i32 @iminor(%struct.inode* %16)
  %18 = and i32 %17, 128
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = load %struct.viot_devinfo_struct*, %struct.viot_devinfo_struct** %4, align 8
  %22 = getelementptr inbounds %struct.viot_devinfo_struct, %struct.viot_devinfo_struct* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  ret void
}

declare dso_local i32 @iminor(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

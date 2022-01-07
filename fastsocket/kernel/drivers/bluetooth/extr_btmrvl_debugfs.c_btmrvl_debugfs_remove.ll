; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btmrvl_debugfs.c_btmrvl_debugfs_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btmrvl_debugfs.c_btmrvl_debugfs_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { %struct.btmrvl_private* }
%struct.btmrvl_private = type { %struct.btmrvl_debugfs_data* }
%struct.btmrvl_debugfs_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btmrvl_debugfs_remove(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  %3 = alloca %struct.btmrvl_private*, align 8
  %4 = alloca %struct.btmrvl_debugfs_data*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  %5 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %6 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %5, i32 0, i32 0
  %7 = load %struct.btmrvl_private*, %struct.btmrvl_private** %6, align 8
  store %struct.btmrvl_private* %7, %struct.btmrvl_private** %3, align 8
  %8 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %9 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %8, i32 0, i32 0
  %10 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %9, align 8
  store %struct.btmrvl_debugfs_data* %10, %struct.btmrvl_debugfs_data** %4, align 8
  %11 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %12 = icmp ne %struct.btmrvl_debugfs_data* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %69

14:                                               ; preds = %1
  %15 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %16 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %15, i32 0, i32 12
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @debugfs_remove(i32 %17)
  %19 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %20 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %19, i32 0, i32 11
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @debugfs_remove(i32 %21)
  %23 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %24 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %23, i32 0, i32 10
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @debugfs_remove(i32 %25)
  %27 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %28 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %27, i32 0, i32 9
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @debugfs_remove(i32 %29)
  %31 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %32 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @debugfs_remove(i32 %33)
  %35 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %36 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @debugfs_remove(i32 %37)
  %39 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %40 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @debugfs_remove(i32 %41)
  %43 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %44 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @debugfs_remove(i32 %45)
  %47 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %48 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @debugfs_remove(i32 %49)
  %51 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %52 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @debugfs_remove(i32 %53)
  %55 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %56 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @debugfs_remove(i32 %57)
  %59 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %60 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @debugfs_remove(i32 %61)
  %63 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %64 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @debugfs_remove(i32 %65)
  %67 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %68 = call i32 @kfree(%struct.btmrvl_debugfs_data* %67)
  br label %69

69:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @debugfs_remove(i32) #1

declare dso_local i32 @kfree(%struct.btmrvl_debugfs_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

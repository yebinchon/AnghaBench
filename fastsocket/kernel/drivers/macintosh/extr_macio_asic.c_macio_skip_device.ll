; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_macio_asic.c_macio_skip_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_macio_asic.c_macio_skip_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"battery\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"escc-legacy\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*)* @macio_skip_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macio_skip_device(%struct.device_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device_node*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %4 = load %struct.device_node*, %struct.device_node** %3, align 8
  %5 = getelementptr inbounds %struct.device_node, %struct.device_node* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @strncmp(i32 %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %18

10:                                               ; preds = %1
  %11 = load %struct.device_node*, %struct.device_node** %3, align 8
  %12 = getelementptr inbounds %struct.device_node, %struct.device_node* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @strncmp(i32 %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 11)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %18

17:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %17, %16, %9
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i64 @strncmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

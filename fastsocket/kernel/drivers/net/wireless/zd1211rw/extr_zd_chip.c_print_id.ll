; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_chip.c_print_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_chip.c_print_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_chip = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zd_chip*)* @print_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_id(%struct.zd_chip* %0) #0 {
  %2 = alloca %struct.zd_chip*, align 8
  %3 = alloca [80 x i8], align 16
  store %struct.zd_chip* %0, %struct.zd_chip** %2, align 8
  %4 = load %struct.zd_chip*, %struct.zd_chip** %2, align 8
  %5 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %6 = call i32 @scnprint_id(%struct.zd_chip* %4, i8* %5, i32 80)
  %7 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 79
  store i8 0, i8* %7, align 1
  %8 = load %struct.zd_chip*, %struct.zd_chip** %2, align 8
  %9 = call i32 @zd_chip_dev(%struct.zd_chip* %8)
  %10 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %11 = call i32 @dev_info(i32 %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %10)
  ret void
}

declare dso_local i32 @scnprint_id(%struct.zd_chip*, i8*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i8*) #1

declare dso_local i32 @zd_chip_dev(%struct.zd_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

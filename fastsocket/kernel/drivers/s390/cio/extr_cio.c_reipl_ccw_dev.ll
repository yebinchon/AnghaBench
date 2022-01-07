; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cio.c_reipl_ccw_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cio.c_reipl_ccw_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_dev_id = type { i32 }
%struct.subchannel_id = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"IPL Device not found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reipl_ccw_dev(%struct.ccw_dev_id* %0) #0 {
  %2 = alloca %struct.ccw_dev_id*, align 8
  %3 = alloca %struct.subchannel_id, align 4
  store %struct.ccw_dev_id* %0, %struct.ccw_dev_id** %2, align 8
  %4 = call i32 @s390_reset_system(i32* null, i32* null)
  %5 = load %struct.ccw_dev_id*, %struct.ccw_dev_id** %2, align 8
  %6 = call i64 @reipl_find_schid(%struct.ccw_dev_id* %5, %struct.subchannel_id* %3)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %1
  %11 = bitcast %struct.subchannel_id* %3 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @do_reipl_asm(i32 %12)
  ret void
}

declare dso_local i32 @s390_reset_system(i32*, i32*) #1

declare dso_local i64 @reipl_find_schid(%struct.ccw_dev_id*, %struct.subchannel_id*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @do_reipl_asm(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

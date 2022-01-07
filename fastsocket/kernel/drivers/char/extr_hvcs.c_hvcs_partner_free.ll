; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvcs.c_hvcs_partner_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvcs.c_hvcs_partner_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hvcs_struct = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hvcs_struct*)* @hvcs_partner_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hvcs_partner_free(%struct.hvcs_struct* %0) #0 {
  %2 = alloca %struct.hvcs_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.hvcs_struct* %0, %struct.hvcs_struct** %2, align 8
  br label %4

4:                                                ; preds = %11, %1
  %5 = load %struct.hvcs_struct*, %struct.hvcs_struct** %2, align 8
  %6 = getelementptr inbounds %struct.hvcs_struct, %struct.hvcs_struct* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @hvcs_free_connection(i32 %9)
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @EBUSY, align 4
  %14 = sub nsw i32 0, %13
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %4, label %16

16:                                               ; preds = %11
  %17 = load %struct.hvcs_struct*, %struct.hvcs_struct** %2, align 8
  %18 = getelementptr inbounds %struct.hvcs_struct, %struct.hvcs_struct* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  ret void
}

declare dso_local i32 @hvcs_free_connection(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

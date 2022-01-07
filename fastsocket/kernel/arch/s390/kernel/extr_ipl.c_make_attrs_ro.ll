; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_ipl.c_make_attrs_ro.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_ipl.c_make_attrs_ro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attribute = type { i32 }

@S_IRUGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.attribute**)* @make_attrs_ro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_attrs_ro(%struct.attribute** %0) #0 {
  %2 = alloca %struct.attribute**, align 8
  store %struct.attribute** %0, %struct.attribute*** %2, align 8
  br label %3

3:                                                ; preds = %7, %1
  %4 = load %struct.attribute**, %struct.attribute*** %2, align 8
  %5 = load %struct.attribute*, %struct.attribute** %4, align 8
  %6 = icmp ne %struct.attribute* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = load i32, i32* @S_IRUGO, align 4
  %9 = load %struct.attribute**, %struct.attribute*** %2, align 8
  %10 = load %struct.attribute*, %struct.attribute** %9, align 8
  %11 = getelementptr inbounds %struct.attribute, %struct.attribute* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 4
  %12 = load %struct.attribute**, %struct.attribute*** %2, align 8
  %13 = getelementptr inbounds %struct.attribute*, %struct.attribute** %12, i32 1
  store %struct.attribute** %13, %struct.attribute*** %2, align 8
  br label %3

14:                                               ; preds = %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-probe.c_ide_register_region.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-probe.c_ide_register_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { i32, i32, i32 }

@exact_match = common dso_local global i32 0, align 4
@exact_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ide_register_region(%struct.gendisk* %0) #0 {
  %2 = alloca %struct.gendisk*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %2, align 8
  %3 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %4 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %7 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @MKDEV(i32 %5, i32 %8)
  %10 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %11 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @exact_match, align 4
  %14 = load i32, i32* @exact_lock, align 4
  %15 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %16 = call i32 @blk_register_region(i32 %9, i32 %12, i32* null, i32 %13, i32 %14, %struct.gendisk* %15)
  ret void
}

declare dso_local i32 @blk_register_region(i32, i32, i32*, i32, i32, %struct.gendisk*) #1

declare dso_local i32 @MKDEV(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

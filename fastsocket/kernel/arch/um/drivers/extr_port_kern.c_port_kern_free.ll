; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_port_kern.c_port_kern_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_port_kern.c_port_kern_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @port_kern_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.port_dev*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.port_dev*
  store %struct.port_dev* %5, %struct.port_dev** %3, align 8
  %6 = load %struct.port_dev*, %struct.port_dev** %3, align 8
  %7 = call i32 @port_remove_dev(%struct.port_dev* %6)
  %8 = load %struct.port_dev*, %struct.port_dev** %3, align 8
  %9 = call i32 @kfree(%struct.port_dev* %8)
  ret void
}

declare dso_local i32 @port_remove_dev(%struct.port_dev*) #1

declare dso_local i32 @kfree(%struct.port_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

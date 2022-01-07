; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c_ata_std_error_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c_ata_std_error_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.ata_port_operations* }
%struct.ata_port_operations = type { i32, i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_std_error_handler(%struct.ata_port* %0) #0 {
  %2 = alloca %struct.ata_port*, align 8
  %3 = alloca %struct.ata_port_operations*, align 8
  %4 = alloca i32*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %2, align 8
  %5 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %6 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %5, i32 0, i32 1
  %7 = load %struct.ata_port_operations*, %struct.ata_port_operations** %6, align 8
  store %struct.ata_port_operations* %7, %struct.ata_port_operations** %3, align 8
  %8 = load %struct.ata_port_operations*, %struct.ata_port_operations** %3, align 8
  %9 = getelementptr inbounds %struct.ata_port_operations, %struct.ata_port_operations* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i64 @ata_is_builtin_hardreset(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %16 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %15, i32 0, i32 0
  %17 = call i32 @sata_scr_valid(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store i32* null, i32** %4, align 8
  br label %20

20:                                               ; preds = %19, %14, %1
  %21 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %22 = load %struct.ata_port_operations*, %struct.ata_port_operations** %3, align 8
  %23 = getelementptr inbounds %struct.ata_port_operations, %struct.ata_port_operations* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ata_port_operations*, %struct.ata_port_operations** %3, align 8
  %26 = getelementptr inbounds %struct.ata_port_operations, %struct.ata_port_operations* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = load %struct.ata_port_operations*, %struct.ata_port_operations** %3, align 8
  %30 = getelementptr inbounds %struct.ata_port_operations, %struct.ata_port_operations* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @ata_do_eh(%struct.ata_port* %21, i32 %24, i32 %27, i32* %28, i32 %31)
  ret void
}

declare dso_local i64 @ata_is_builtin_hardreset(i32*) #1

declare dso_local i32 @sata_scr_valid(i32*) #1

declare dso_local i32 @ata_do_eh(%struct.ata_port*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

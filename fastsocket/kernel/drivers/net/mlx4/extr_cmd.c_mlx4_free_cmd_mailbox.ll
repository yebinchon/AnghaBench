; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_cmd.c_mlx4_free_cmd_mailbox.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_cmd.c_mlx4_free_cmd_mailbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %0, %struct.mlx4_cmd_mailbox* %1) #0 {
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_cmd_mailbox*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  store %struct.mlx4_cmd_mailbox* %1, %struct.mlx4_cmd_mailbox** %4, align 8
  %5 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %4, align 8
  %6 = icmp ne %struct.mlx4_cmd_mailbox* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %23

8:                                                ; preds = %2
  %9 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %10 = call %struct.TYPE_4__* @mlx4_priv(%struct.mlx4_dev* %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %4, align 8
  %15 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %4, align 8
  %18 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pci_pool_free(i32 %13, i32 %16, i32 %19)
  %21 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %4, align 8
  %22 = call i32 @kfree(%struct.mlx4_cmd_mailbox* %21)
  br label %23

23:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @pci_pool_free(i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @kfree(%struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

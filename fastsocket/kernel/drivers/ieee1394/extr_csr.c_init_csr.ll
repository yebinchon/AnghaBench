; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr.c_init_csr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr.c_init_csr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CSR1212_KV_ID_NODE_CAPABILITIES = common dso_local global i32 0, align 4
@node_cap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Failed to allocate memory for Node Capabilties ConfigROM entry!\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@csr_highlevel = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_csr() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @CSR1212_KV_ID_NODE_CAPABILITIES, align 4
  %3 = call i32 @csr1212_new_immediate(i32 %2, i32 33728)
  store i32 %3, i32* @node_cap, align 4
  %4 = load i32, i32* @node_cap, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %0
  %7 = call i32 @HPSB_ERR(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %1, align 4
  br label %12

10:                                               ; preds = %0
  %11 = call i32 @hpsb_register_highlevel(i32* @csr_highlevel)
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %10, %6
  %13 = load i32, i32* %1, align 4
  ret i32 %13
}

declare dso_local i32 @csr1212_new_immediate(i32, i32) #1

declare dso_local i32 @HPSB_ERR(i8*) #1

declare dso_local i32 @hpsb_register_highlevel(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

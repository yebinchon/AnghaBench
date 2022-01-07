; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/boot/compressed/extr_misc.c_decompress_kernel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/boot/compressed/extr_misc.c_decompress_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@input_data = common dso_local global i32 0, align 4
@inbuf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"You need an ETRAX 100LX to run linux 2.6\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Uncompressing Linux...\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Done. Now booting the kernel\0A\00", align 1
@R_GEN_CONFIG = common dso_local global i32* null, align 8
@R_SERIAL0_BAUD = common dso_local global i32* null, align 8
@R_SERIAL0_TR_CTRL = common dso_local global i32* null, align 8
@R_SERIAL0_XOFF = common dso_local global i64* null, align 8
@R_SERIAL1_BAUD = common dso_local global i32* null, align 8
@R_SERIAL1_TR_CTRL = common dso_local global i32* null, align 8
@R_SERIAL1_XOFF = common dso_local global i64* null, align 8
@R_SERIAL2_BAUD = common dso_local global i32* null, align 8
@R_SERIAL2_TR_CTRL = common dso_local global i32* null, align 8
@R_SERIAL2_XOFF = common dso_local global i64* null, align 8
@R_SERIAL3_BAUD = common dso_local global i32* null, align 8
@R_SERIAL3_TR_CTRL = common dso_local global i32* null, align 8
@R_SERIAL3_XOFF = common dso_local global i64* null, align 8
@clkgen = common dso_local global i32 0, align 4
@pinmux = common dso_local global i32 0, align 4
@regi_clkgen = common dso_local global i32 0, align 4
@regi_pinmux = common dso_local global i32 0, align 4
@regi_ser0 = common dso_local global i32 0, align 4
@regi_ser1 = common dso_local global i32 0, align 4
@regi_ser2 = common dso_local global i32 0, align 4
@regi_ser3 = common dso_local global i32 0, align 4
@regk_clkgen_yes = common dso_local global i32 0, align 4
@regk_pinmux_yes = common dso_local global i8* null, align 8
@rw_clk_ctrl = common dso_local global i32 0, align 4
@rw_hwprot = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decompress_kernel() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 10, i8* %2, align 1
  %3 = load i32, i32* @input_data, align 4
  store i32 %3, i32* @inbuf, align 4
  %4 = call i32 (...) @setup_normal_output_buffer()
  %5 = call i32 (...) @makecrc()
  call void asm sideeffect "move $$vr,$0", "=*rm,~{dirflag},~{fpsr},~{flags}"(i8* %1) #2, !srcloc !2
  %6 = load i8, i8* %1, align 1
  %7 = sext i8 %6 to i32
  %8 = load i8, i8* %2, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = call i32 @puts(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %13
  br label %13

14:                                               ; preds = %0
  %15 = call i32 @puts(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 (...) @gunzip()
  %17 = call i32 @puts(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @setup_normal_output_buffer(...) #1

declare dso_local i32 @makecrc(...) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @gunzip(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1290}

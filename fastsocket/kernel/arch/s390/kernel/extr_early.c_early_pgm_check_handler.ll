; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_early.c_early_pgm_check_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_early.c_early_pgm_check_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.exception_table_entry = type { i32 }

@S390_lowcore = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PSW_ADDR_INSN = common dso_local global i64 0, align 8
@PSW_ADDR_AMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @early_pgm_check_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @early_pgm_check_handler() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.exception_table_entry*, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @S390_lowcore, i32 0, i32 0, i32 0), align 8
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* %1, align 8
  %5 = load i64, i64* @PSW_ADDR_INSN, align 8
  %6 = and i64 %4, %5
  %7 = call %struct.exception_table_entry* @search_exception_tables(i64 %6)
  store %struct.exception_table_entry* %7, %struct.exception_table_entry** %2, align 8
  %8 = load %struct.exception_table_entry*, %struct.exception_table_entry** %2, align 8
  %9 = icmp ne %struct.exception_table_entry* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %0
  %11 = call i32 @disabled_wait(i32 0)
  br label %12

12:                                               ; preds = %10, %0
  %13 = load %struct.exception_table_entry*, %struct.exception_table_entry** %2, align 8
  %14 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PSW_ADDR_AMODE, align 4
  %17 = or i32 %15, %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @S390_lowcore, i32 0, i32 0, i32 0), align 8
  ret void
}

declare dso_local %struct.exception_table_entry* @search_exception_tables(i64) #1

declare dso_local i32 @disabled_wait(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

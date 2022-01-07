; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_crash_dump.c_fill_cpu_elf_notes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_crash_dump.c_fill_cpu_elf_notes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.save_area_s390x = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fill_cpu_elf_notes(i8* %0, %struct.save_area_s390x* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.save_area_s390x*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.save_area_s390x* %1, %struct.save_area_s390x** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load %struct.save_area_s390x*, %struct.save_area_s390x** %4, align 8
  %7 = call i8* @nt_prstatus(i8* %5, %struct.save_area_s390x* %6)
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load %struct.save_area_s390x*, %struct.save_area_s390x** %4, align 8
  %10 = call i8* @nt_fpregset(i8* %8, %struct.save_area_s390x* %9)
  store i8* %10, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = load %struct.save_area_s390x*, %struct.save_area_s390x** %4, align 8
  %13 = call i8* @nt_s390_timer(i8* %11, %struct.save_area_s390x* %12)
  store i8* %13, i8** %3, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = load %struct.save_area_s390x*, %struct.save_area_s390x** %4, align 8
  %16 = call i8* @nt_s390_tod_cmp(i8* %14, %struct.save_area_s390x* %15)
  store i8* %16, i8** %3, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = load %struct.save_area_s390x*, %struct.save_area_s390x** %4, align 8
  %19 = call i8* @nt_s390_tod_preg(i8* %17, %struct.save_area_s390x* %18)
  store i8* %19, i8** %3, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = load %struct.save_area_s390x*, %struct.save_area_s390x** %4, align 8
  %22 = call i8* @nt_s390_ctrs(i8* %20, %struct.save_area_s390x* %21)
  store i8* %22, i8** %3, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = load %struct.save_area_s390x*, %struct.save_area_s390x** %4, align 8
  %25 = call i8* @nt_s390_prefix(i8* %23, %struct.save_area_s390x* %24)
  store i8* %25, i8** %3, align 8
  %26 = load i8*, i8** %3, align 8
  ret i8* %26
}

declare dso_local i8* @nt_prstatus(i8*, %struct.save_area_s390x*) #1

declare dso_local i8* @nt_fpregset(i8*, %struct.save_area_s390x*) #1

declare dso_local i8* @nt_s390_timer(i8*, %struct.save_area_s390x*) #1

declare dso_local i8* @nt_s390_tod_cmp(i8*, %struct.save_area_s390x*) #1

declare dso_local i8* @nt_s390_tod_preg(i8*, %struct.save_area_s390x*) #1

declare dso_local i8* @nt_s390_ctrs(i8*, %struct.save_area_s390x*) #1

declare dso_local i8* @nt_s390_prefix(i8*, %struct.save_area_s390x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

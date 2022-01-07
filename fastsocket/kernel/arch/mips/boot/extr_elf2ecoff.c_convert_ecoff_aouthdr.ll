; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/boot/extr_elf2ecoff.c_convert_ecoff_aouthdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/boot/extr_elf2ecoff.c_convert_ecoff_aouthdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aouthdr = type { i8*, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aouthdr*)* @convert_ecoff_aouthdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_ecoff_aouthdr(%struct.aouthdr* %0) #0 {
  %2 = alloca %struct.aouthdr*, align 8
  store %struct.aouthdr* %0, %struct.aouthdr** %2, align 8
  %3 = load %struct.aouthdr*, %struct.aouthdr** %2, align 8
  %4 = getelementptr inbounds %struct.aouthdr, %struct.aouthdr* %3, i32 0, i32 11
  %5 = load i8*, i8** %4, align 8
  %6 = call i8* @swab16(i8* %5)
  %7 = load %struct.aouthdr*, %struct.aouthdr** %2, align 8
  %8 = getelementptr inbounds %struct.aouthdr, %struct.aouthdr* %7, i32 0, i32 11
  store i8* %6, i8** %8, align 8
  %9 = load %struct.aouthdr*, %struct.aouthdr** %2, align 8
  %10 = getelementptr inbounds %struct.aouthdr, %struct.aouthdr* %9, i32 0, i32 10
  %11 = load i8*, i8** %10, align 8
  %12 = call i8* @swab16(i8* %11)
  %13 = load %struct.aouthdr*, %struct.aouthdr** %2, align 8
  %14 = getelementptr inbounds %struct.aouthdr, %struct.aouthdr* %13, i32 0, i32 10
  store i8* %12, i8** %14, align 8
  %15 = load %struct.aouthdr*, %struct.aouthdr** %2, align 8
  %16 = getelementptr inbounds %struct.aouthdr, %struct.aouthdr* %15, i32 0, i32 9
  %17 = load i8*, i8** %16, align 8
  %18 = call i8* @swab32(i8* %17)
  %19 = load %struct.aouthdr*, %struct.aouthdr** %2, align 8
  %20 = getelementptr inbounds %struct.aouthdr, %struct.aouthdr* %19, i32 0, i32 9
  store i8* %18, i8** %20, align 8
  %21 = load %struct.aouthdr*, %struct.aouthdr** %2, align 8
  %22 = getelementptr inbounds %struct.aouthdr, %struct.aouthdr* %21, i32 0, i32 8
  %23 = load i8*, i8** %22, align 8
  %24 = call i8* @swab32(i8* %23)
  %25 = load %struct.aouthdr*, %struct.aouthdr** %2, align 8
  %26 = getelementptr inbounds %struct.aouthdr, %struct.aouthdr* %25, i32 0, i32 8
  store i8* %24, i8** %26, align 8
  %27 = load %struct.aouthdr*, %struct.aouthdr** %2, align 8
  %28 = getelementptr inbounds %struct.aouthdr, %struct.aouthdr* %27, i32 0, i32 7
  %29 = load i8*, i8** %28, align 8
  %30 = call i8* @swab32(i8* %29)
  %31 = load %struct.aouthdr*, %struct.aouthdr** %2, align 8
  %32 = getelementptr inbounds %struct.aouthdr, %struct.aouthdr* %31, i32 0, i32 7
  store i8* %30, i8** %32, align 8
  %33 = load %struct.aouthdr*, %struct.aouthdr** %2, align 8
  %34 = getelementptr inbounds %struct.aouthdr, %struct.aouthdr* %33, i32 0, i32 6
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @swab32(i8* %35)
  %37 = load %struct.aouthdr*, %struct.aouthdr** %2, align 8
  %38 = getelementptr inbounds %struct.aouthdr, %struct.aouthdr* %37, i32 0, i32 6
  store i8* %36, i8** %38, align 8
  %39 = load %struct.aouthdr*, %struct.aouthdr** %2, align 8
  %40 = getelementptr inbounds %struct.aouthdr, %struct.aouthdr* %39, i32 0, i32 5
  %41 = load i8*, i8** %40, align 8
  %42 = call i8* @swab32(i8* %41)
  %43 = load %struct.aouthdr*, %struct.aouthdr** %2, align 8
  %44 = getelementptr inbounds %struct.aouthdr, %struct.aouthdr* %43, i32 0, i32 5
  store i8* %42, i8** %44, align 8
  %45 = load %struct.aouthdr*, %struct.aouthdr** %2, align 8
  %46 = getelementptr inbounds %struct.aouthdr, %struct.aouthdr* %45, i32 0, i32 4
  %47 = load i8*, i8** %46, align 8
  %48 = call i8* @swab32(i8* %47)
  %49 = load %struct.aouthdr*, %struct.aouthdr** %2, align 8
  %50 = getelementptr inbounds %struct.aouthdr, %struct.aouthdr* %49, i32 0, i32 4
  store i8* %48, i8** %50, align 8
  %51 = load %struct.aouthdr*, %struct.aouthdr** %2, align 8
  %52 = getelementptr inbounds %struct.aouthdr, %struct.aouthdr* %51, i32 0, i32 3
  %53 = load i8*, i8** %52, align 8
  %54 = call i8* @swab32(i8* %53)
  %55 = load %struct.aouthdr*, %struct.aouthdr** %2, align 8
  %56 = getelementptr inbounds %struct.aouthdr, %struct.aouthdr* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  %57 = load %struct.aouthdr*, %struct.aouthdr** %2, align 8
  %58 = getelementptr inbounds %struct.aouthdr, %struct.aouthdr* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = call i8* @swab32(i8* %59)
  %61 = load %struct.aouthdr*, %struct.aouthdr** %2, align 8
  %62 = getelementptr inbounds %struct.aouthdr, %struct.aouthdr* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  %63 = load %struct.aouthdr*, %struct.aouthdr** %2, align 8
  %64 = getelementptr inbounds %struct.aouthdr, %struct.aouthdr* %63, i32 0, i32 1
  %65 = load i8**, i8*** %64, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i8* @swab32(i8* %67)
  %69 = load %struct.aouthdr*, %struct.aouthdr** %2, align 8
  %70 = getelementptr inbounds %struct.aouthdr, %struct.aouthdr* %69, i32 0, i32 1
  %71 = load i8**, i8*** %70, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 0
  store i8* %68, i8** %72, align 8
  %73 = load %struct.aouthdr*, %struct.aouthdr** %2, align 8
  %74 = getelementptr inbounds %struct.aouthdr, %struct.aouthdr* %73, i32 0, i32 1
  %75 = load i8**, i8*** %74, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i8* @swab32(i8* %77)
  %79 = load %struct.aouthdr*, %struct.aouthdr** %2, align 8
  %80 = getelementptr inbounds %struct.aouthdr, %struct.aouthdr* %79, i32 0, i32 1
  %81 = load i8**, i8*** %80, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 1
  store i8* %78, i8** %82, align 8
  %83 = load %struct.aouthdr*, %struct.aouthdr** %2, align 8
  %84 = getelementptr inbounds %struct.aouthdr, %struct.aouthdr* %83, i32 0, i32 1
  %85 = load i8**, i8*** %84, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 2
  %87 = load i8*, i8** %86, align 8
  %88 = call i8* @swab32(i8* %87)
  %89 = load %struct.aouthdr*, %struct.aouthdr** %2, align 8
  %90 = getelementptr inbounds %struct.aouthdr, %struct.aouthdr* %89, i32 0, i32 1
  %91 = load i8**, i8*** %90, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 2
  store i8* %88, i8** %92, align 8
  %93 = load %struct.aouthdr*, %struct.aouthdr** %2, align 8
  %94 = getelementptr inbounds %struct.aouthdr, %struct.aouthdr* %93, i32 0, i32 1
  %95 = load i8**, i8*** %94, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 3
  %97 = load i8*, i8** %96, align 8
  %98 = call i8* @swab32(i8* %97)
  %99 = load %struct.aouthdr*, %struct.aouthdr** %2, align 8
  %100 = getelementptr inbounds %struct.aouthdr, %struct.aouthdr* %99, i32 0, i32 1
  %101 = load i8**, i8*** %100, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 3
  store i8* %98, i8** %102, align 8
  %103 = load %struct.aouthdr*, %struct.aouthdr** %2, align 8
  %104 = getelementptr inbounds %struct.aouthdr, %struct.aouthdr* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = call i8* @swab32(i8* %105)
  %107 = load %struct.aouthdr*, %struct.aouthdr** %2, align 8
  %108 = getelementptr inbounds %struct.aouthdr, %struct.aouthdr* %107, i32 0, i32 0
  store i8* %106, i8** %108, align 8
  ret void
}

declare dso_local i8* @swab16(i8*) #1

declare dso_local i8* @swab32(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/ia32/extr_sys_ia32.c_fill_user_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/ia32/extr_sys_ia32.c_fill_user_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ia32_user_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.desc_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ia32_user_desc*, i32, %struct.desc_struct*)* @fill_user_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_user_desc(%struct.ia32_user_desc* %0, i32 %1, %struct.desc_struct* %2) #0 {
  %4 = alloca %struct.ia32_user_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.desc_struct*, align 8
  store %struct.ia32_user_desc* %0, %struct.ia32_user_desc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.desc_struct* %2, %struct.desc_struct** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.ia32_user_desc*, %struct.ia32_user_desc** %4, align 8
  %9 = getelementptr inbounds %struct.ia32_user_desc, %struct.ia32_user_desc* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.desc_struct*, %struct.desc_struct** %6, align 8
  %11 = call i32 @GET_BASE(%struct.desc_struct* %10)
  %12 = load %struct.ia32_user_desc*, %struct.ia32_user_desc** %4, align 8
  %13 = getelementptr inbounds %struct.ia32_user_desc, %struct.ia32_user_desc* %12, i32 0, i32 8
  store i32 %11, i32* %13, align 4
  %14 = load %struct.desc_struct*, %struct.desc_struct** %6, align 8
  %15 = call i32 @GET_LIMIT(%struct.desc_struct* %14)
  %16 = load %struct.ia32_user_desc*, %struct.ia32_user_desc** %4, align 8
  %17 = getelementptr inbounds %struct.ia32_user_desc, %struct.ia32_user_desc* %16, i32 0, i32 7
  store i32 %15, i32* %17, align 4
  %18 = load %struct.desc_struct*, %struct.desc_struct** %6, align 8
  %19 = call i32 @GET_32BIT(%struct.desc_struct* %18)
  %20 = load %struct.ia32_user_desc*, %struct.ia32_user_desc** %4, align 8
  %21 = getelementptr inbounds %struct.ia32_user_desc, %struct.ia32_user_desc* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 4
  %22 = load %struct.desc_struct*, %struct.desc_struct** %6, align 8
  %23 = call i32 @GET_CONTENTS(%struct.desc_struct* %22)
  %24 = load %struct.ia32_user_desc*, %struct.ia32_user_desc** %4, align 8
  %25 = getelementptr inbounds %struct.ia32_user_desc, %struct.ia32_user_desc* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load %struct.desc_struct*, %struct.desc_struct** %6, align 8
  %27 = call i32 @GET_WRITABLE(%struct.desc_struct* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = load %struct.ia32_user_desc*, %struct.ia32_user_desc** %4, align 8
  %32 = getelementptr inbounds %struct.ia32_user_desc, %struct.ia32_user_desc* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.desc_struct*, %struct.desc_struct** %6, align 8
  %34 = call i32 @GET_LIMIT_PAGES(%struct.desc_struct* %33)
  %35 = load %struct.ia32_user_desc*, %struct.ia32_user_desc** %4, align 8
  %36 = getelementptr inbounds %struct.ia32_user_desc, %struct.ia32_user_desc* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load %struct.desc_struct*, %struct.desc_struct** %6, align 8
  %38 = call i32 @GET_PRESENT(%struct.desc_struct* %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = load %struct.ia32_user_desc*, %struct.ia32_user_desc** %4, align 8
  %43 = getelementptr inbounds %struct.ia32_user_desc, %struct.ia32_user_desc* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.desc_struct*, %struct.desc_struct** %6, align 8
  %45 = call i32 @GET_USEABLE(%struct.desc_struct* %44)
  %46 = load %struct.ia32_user_desc*, %struct.ia32_user_desc** %4, align 8
  %47 = getelementptr inbounds %struct.ia32_user_desc, %struct.ia32_user_desc* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  ret void
}

declare dso_local i32 @GET_BASE(%struct.desc_struct*) #1

declare dso_local i32 @GET_LIMIT(%struct.desc_struct*) #1

declare dso_local i32 @GET_32BIT(%struct.desc_struct*) #1

declare dso_local i32 @GET_CONTENTS(%struct.desc_struct*) #1

declare dso_local i32 @GET_WRITABLE(%struct.desc_struct*) #1

declare dso_local i32 @GET_LIMIT_PAGES(%struct.desc_struct*) #1

declare dso_local i32 @GET_PRESENT(%struct.desc_struct*) #1

declare dso_local i32 @GET_USEABLE(%struct.desc_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr.c_host_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr.c_host_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_host = type { i32, i32, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i8**, i8**, i32 }
%struct.TYPE_3__ = type { i32 (%struct.hpsb_host*, i32, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpsb_host*)* @host_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @host_reset(%struct.hpsb_host* %0) #0 {
  %2 = alloca %struct.hpsb_host*, align 8
  store %struct.hpsb_host* %0, %struct.hpsb_host** %2, align 8
  %3 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %4 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = and i32 %6, 768
  store i32 %7, i32* %5, align 8
  %8 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %9 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i32 63, i32* %10, align 4
  %11 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %12 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  store i32 4915, i32* %13, align 8
  %14 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %15 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  store i32 -2, i32* %16, align 4
  %17 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %18 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 8
  store i32 -1, i32* %19, align 8
  %20 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %21 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 4
  store i32 -2147483617, i32* %22, align 8
  %23 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %24 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %23, i32 0, i32 6
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %1
  %28 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %29 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %28, i32 0, i32 5
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (%struct.hpsb_host*, i32, i32, i32)*, i32 (%struct.hpsb_host*, i32, i32, i32)** %31, align 8
  %33 = icmp ne i32 (%struct.hpsb_host*, i32, i32, i32)* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %36 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %35, i32 0, i32 5
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32 (%struct.hpsb_host*, i32, i32, i32)*, i32 (%struct.hpsb_host*, i32, i32, i32)** %38, align 8
  %40 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %41 = call i32 %39(%struct.hpsb_host* %40, i32 2, i32 -2, i32 -1)
  br label %42

42:                                               ; preds = %34, %27
  br label %43

43:                                               ; preds = %42, %1
  %44 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %45 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = shl i32 %46, 16
  %48 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %49 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 5
  store i32 %47, i32* %50, align 4
  %51 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %52 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %43
  %56 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %57 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, -257
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %55, %43
  %62 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %63 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 7
  %65 = load i8**, i8*** %64, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 1
  %67 = call i32 @be32_add_cpu(i8** %66, i32 1)
  %68 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %69 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 16
  %72 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %73 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %71, %74
  %76 = call i8* @cpu_to_be32(i32 %75)
  %77 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %78 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 7
  %80 = load i8**, i8*** %79, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 2
  store i8* %76, i8** %81, align 8
  %82 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %83 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 2
  %86 = shl i32 %85, 16
  %87 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %88 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 7
  %90 = load i8**, i8*** %89, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 1
  %92 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %93 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 2
  %96 = call i32 @csr_crc16(i8** %91, i32 %95)
  %97 = or i32 %86, %96
  %98 = call i8* @cpu_to_be32(i32 %97)
  %99 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %100 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 7
  %102 = load i8**, i8*** %101, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 0
  store i8* %98, i8** %103, align 8
  %104 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %105 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 6
  %107 = load i8**, i8*** %106, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 1
  %109 = call i32 @be32_add_cpu(i8** %108, i32 1)
  %110 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %111 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 6
  %113 = load i8**, i8*** %112, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i64 1
  %115 = call i32 @csr_crc16(i8** %114, i32 1009)
  %116 = or i32 66125824, %115
  %117 = call i8* @cpu_to_be32(i32 %116)
  %118 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %119 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 6
  %121 = load i8**, i8*** %120, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 0
  store i8* %117, i8** %122, align 8
  ret void
}

declare dso_local i32 @be32_add_cpu(i8**, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @csr_crc16(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

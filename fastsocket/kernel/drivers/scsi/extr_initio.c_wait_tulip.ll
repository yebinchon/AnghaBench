; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_initio.c_wait_tulip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_initio.c_wait_tulip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.initio_host = type { i32, i32, i32, i32, i64, i32*, %struct.TYPE_3__*, i8* }
%struct.TYPE_3__ = type { i64 }

@TUL_SStatus0 = common dso_local global i64 0, align 8
@TSS_INT_PENDING = common dso_local global i32 0, align 4
@TUL_SInt = common dso_local global i64 0, align 8
@TSS_PH_MASK = common dso_local global i32 0, align 4
@TUL_SStatus1 = common dso_local global i64 0, align 8
@TSS_RESEL_INT = common dso_local global i32 0, align 4
@TSS_SEL_TIMEOUT = common dso_local global i32 0, align 4
@TSS_SCSIRST_INT = common dso_local global i32 0, align 4
@TSS_DISC_INT = common dso_local global i32 0, align 4
@HCF_EXPECT_DONE_DISC = common dso_local global i32 0, align 4
@TSC_FLUSH_FIFO = common dso_local global i32 0, align 4
@TUL_SCtrl0 = common dso_local global i64 0, align 8
@TSC_INITDEFAULT = common dso_local global i32 0, align 4
@TUL_SConfig = common dso_local global i64 0, align 8
@TSC_HW_RESELECT = common dso_local global i32 0, align 4
@TUL_SCtrl1 = common dso_local global i64 0, align 8
@HCF_EXPECT_DISC = common dso_local global i32 0, align 4
@TSS_FUNC_COMP = common dso_local global i32 0, align 4
@TSS_BUS_SERV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.initio_host*)* @wait_tulip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_tulip(%struct.initio_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.initio_host*, align 8
  store %struct.initio_host* %0, %struct.initio_host** %3, align 8
  br label %4

4:                                                ; preds = %18, %1
  %5 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %6 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @TUL_SStatus0, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i8* @inb(i64 %9)
  %11 = ptrtoint i8* %10 to i32
  %12 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %13 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @TSS_INT_PENDING, align 4
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = call i32 (...) @cpu_relax()
  br label %4

20:                                               ; preds = %4
  %21 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %22 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TUL_SInt, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i8* @inb(i64 %25)
  %27 = ptrtoint i8* %26 to i32
  %28 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %29 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %31 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @TSS_PH_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %36 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %38 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TUL_SStatus1, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i8* @inb(i64 %41)
  %43 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %44 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %43, i32 0, i32 7
  store i8* %42, i8** %44, align 8
  %45 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %46 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @TSS_RESEL_INT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %20
  %52 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %53 = call i32 @int_initio_resel(%struct.initio_host* %52)
  store i32 %53, i32* %2, align 4
  br label %193

54:                                               ; preds = %20
  %55 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %56 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @TSS_SEL_TIMEOUT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %63 = call i32 @int_initio_busfree(%struct.initio_host* %62)
  store i32 %63, i32* %2, align 4
  br label %193

64:                                               ; preds = %54
  %65 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %66 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @TSS_SCSIRST_INT, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %73 = call i32 @int_initio_scsi_rst(%struct.initio_host* %72)
  store i32 %73, i32* %2, align 4
  br label %193

74:                                               ; preds = %64
  %75 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %76 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @TSS_DISC_INT, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %176

81:                                               ; preds = %74
  %82 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %83 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @HCF_EXPECT_DONE_DISC, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %134

88:                                               ; preds = %81
  %89 = load i32, i32* @TSC_FLUSH_FIFO, align 4
  %90 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %91 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @TUL_SCtrl0, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @outb(i32 %89, i64 %94)
  %96 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %97 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %98 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %97, i32 0, i32 6
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = call i32 @initio_unlink_busy_scb(%struct.initio_host* %96, %struct.TYPE_3__* %99)
  %101 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %102 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %101, i32 0, i32 6
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  store i64 0, i64* %104, align 8
  %105 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %106 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %107 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %106, i32 0, i32 6
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = call i32 @initio_append_done_scb(%struct.initio_host* %105, %struct.TYPE_3__* %108)
  %110 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %111 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %110, i32 0, i32 6
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %111, align 8
  %112 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %113 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %112, i32 0, i32 5
  store i32* null, i32** %113, align 8
  %114 = load i32, i32* @HCF_EXPECT_DONE_DISC, align 4
  %115 = xor i32 %114, -1
  %116 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %117 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, %115
  store i32 %119, i32* %117, align 4
  %120 = load i32, i32* @TSC_INITDEFAULT, align 4
  %121 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %122 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @TUL_SConfig, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @outb(i32 %120, i64 %125)
  %127 = load i32, i32* @TSC_HW_RESELECT, align 4
  %128 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %129 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @TUL_SCtrl1, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @outb(i32 %127, i64 %132)
  store i32 -1, i32* %2, align 4
  br label %193

134:                                              ; preds = %81
  %135 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %136 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @HCF_EXPECT_DISC, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %173

141:                                              ; preds = %134
  %142 = load i32, i32* @TSC_FLUSH_FIFO, align 4
  %143 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %144 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @TUL_SCtrl0, align 8
  %147 = add nsw i64 %145, %146
  %148 = call i32 @outb(i32 %142, i64 %147)
  %149 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %150 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %149, i32 0, i32 6
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %150, align 8
  %151 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %152 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %151, i32 0, i32 5
  store i32* null, i32** %152, align 8
  %153 = load i32, i32* @HCF_EXPECT_DISC, align 4
  %154 = xor i32 %153, -1
  %155 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %156 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, %154
  store i32 %158, i32* %156, align 4
  %159 = load i32, i32* @TSC_INITDEFAULT, align 4
  %160 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %161 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %160, i32 0, i32 4
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @TUL_SConfig, align 8
  %164 = add nsw i64 %162, %163
  %165 = call i32 @outb(i32 %159, i64 %164)
  %166 = load i32, i32* @TSC_HW_RESELECT, align 4
  %167 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %168 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @TUL_SCtrl1, align 8
  %171 = add nsw i64 %169, %170
  %172 = call i32 @outb(i32 %166, i64 %171)
  store i32 -1, i32* %2, align 4
  br label %193

173:                                              ; preds = %134
  %174 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %175 = call i32 @int_initio_busfree(%struct.initio_host* %174)
  store i32 %175, i32* %2, align 4
  br label %193

176:                                              ; preds = %74
  %177 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %178 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @TSS_FUNC_COMP, align 4
  %181 = load i32, i32* @TSS_BUS_SERV, align 4
  %182 = or i32 %180, %181
  %183 = and i32 %179, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %176
  %186 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %187 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  store i32 %188, i32* %2, align 4
  br label %193

189:                                              ; preds = %176
  %190 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %191 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  store i32 %192, i32* %2, align 4
  br label %193

193:                                              ; preds = %189, %185, %173, %141, %88, %71, %61, %51
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

declare dso_local i8* @inb(i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @int_initio_resel(%struct.initio_host*) #1

declare dso_local i32 @int_initio_busfree(%struct.initio_host*) #1

declare dso_local i32 @int_initio_scsi_rst(%struct.initio_host*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @initio_unlink_busy_scb(%struct.initio_host*, %struct.TYPE_3__*) #1

declare dso_local i32 @initio_append_done_scb(%struct.initio_host*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

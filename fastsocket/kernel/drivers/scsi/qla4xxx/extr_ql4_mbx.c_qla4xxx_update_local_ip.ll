; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_mbx.c_qla4xxx_update_local_ip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_mbx.c_qla4xxx_update_local_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i32*, i32*, i32, i32, i32, i8*, i8*, %struct.TYPE_5__, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.addr_ctrl_blk = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ACB_SUPPORTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*, %struct.addr_ctrl_blk*)* @qla4xxx_update_local_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla4xxx_update_local_ip(%struct.scsi_qla_host* %0, %struct.addr_ctrl_blk* %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca %struct.addr_ctrl_blk*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store %struct.addr_ctrl_blk* %1, %struct.addr_ctrl_blk** %4, align 8
  %5 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %6 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %5, i32 0, i32 20
  %7 = load i32, i32* %6, align 4
  %8 = call i8* @le16_to_cpu(i32 %7)
  %9 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 20
  store i8* %8, i8** %11, align 8
  %12 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %13 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %12, i32 0, i32 19
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @le16_to_cpu(i32 %14)
  %16 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %17 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 19
  store i8* %15, i8** %18, align 8
  %19 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %20 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %19, i32 0, i32 18
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @le16_to_cpu(i32 %21)
  %23 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %24 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 18
  store i8* %22, i8** %25, align 8
  %26 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %27 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %26, i32 0, i32 17
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @le16_to_cpu(i32 %28)
  %30 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %31 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 17
  store i8* %29, i8** %32, align 8
  %33 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %34 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %33, i32 0, i32 16
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @le16_to_cpu(i32 %35)
  %37 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %38 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 16
  store i8* %36, i8** %39, align 8
  %40 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %41 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ACB_SUPPORTED, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %2
  %46 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %47 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %46, i32 0, i32 15
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @le16_to_cpu(i32 %48)
  %50 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %51 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 15
  store i8* %49, i8** %52, align 8
  %53 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %54 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %53, i32 0, i32 14
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @le16_to_cpu(i32 %55)
  %57 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %58 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 14
  store i8* %56, i8** %59, align 8
  br label %60

60:                                               ; preds = %45, %2
  %61 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %62 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %66 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %65, i32 0, i32 13
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @min(i32 8, i32 4)
  %69 = call i32 @memcpy(i32* %64, i32 %67, i32 %68)
  %70 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %71 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %75 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %74, i32 0, i32 12
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @min(i32 8, i32 4)
  %78 = call i32 @memcpy(i32* %73, i32 %76, i32 %77)
  %79 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %80 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %84 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %83, i32 0, i32 11
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @min(i32 8, i32 4)
  %87 = call i32 @memcpy(i32* %82, i32 %85, i32 %86)
  %88 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %89 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %88, i32 0, i32 10
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @be16_to_cpu(i32 %90)
  %92 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %93 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 13
  store i8* %91, i8** %94, align 8
  %95 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %96 = call i64 @is_ipv6_enabled(%struct.scsi_qla_host* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %191

98:                                               ; preds = %60
  %99 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %100 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %99, i32 0, i32 9
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @le16_to_cpu(i32 %101)
  %103 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %104 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 12
  store i8* %102, i8** %105, align 8
  %106 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %107 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %106, i32 0, i32 8
  %108 = load i32, i32* %107, align 4
  %109 = call i8* @le16_to_cpu(i32 %108)
  %110 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %111 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 11
  store i8* %109, i8** %112, align 8
  %113 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %114 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 4
  %116 = call i8* @le16_to_cpu(i32 %115)
  %117 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %118 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 10
  store i8* %116, i8** %119, align 8
  %120 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %121 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 4
  %123 = call i8* @le16_to_cpu(i32 %122)
  %124 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %125 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 9
  store i8* %123, i8** %126, align 8
  %127 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %128 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  store i32 254, i32* %133, align 4
  %134 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %135 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  store i32 128, i32* %140, align 4
  %141 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %142 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 8
  %148 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %149 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @min(i32 4, i32 4)
  %152 = call i32 @memcpy(i32* %147, i32 %150, i32 %151)
  %153 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %154 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 3
  %156 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %157 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @min(i32 4, i32 4)
  %160 = call i32 @memcpy(i32* %155, i32 %158, i32 %159)
  %161 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %162 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 4
  %164 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %165 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @min(i32 4, i32 4)
  %168 = call i32 @memcpy(i32* %163, i32 %166, i32 %167)
  %169 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %170 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 5
  %172 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %173 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @min(i32 4, i32 4)
  %176 = call i32 @memcpy(i32* %171, i32 %174, i32 %175)
  %177 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %178 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = call i8* @be16_to_cpu(i32 %179)
  %181 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %182 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 7
  store i8* %180, i8** %183, align 8
  %184 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %185 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i8* @le16_to_cpu(i32 %186)
  %188 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %189 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 6
  store i8* %187, i8** %190, align 8
  br label %191

191:                                              ; preds = %98, %60
  ret void
}

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i8* @be16_to_cpu(i32) #1

declare dso_local i64 @is_ipv6_enabled(%struct.scsi_qla_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

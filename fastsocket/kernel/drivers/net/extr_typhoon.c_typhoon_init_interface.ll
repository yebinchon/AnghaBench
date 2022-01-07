; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_typhoon.c_typhoon_init_interface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_typhoon.c_typhoon_init_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typhoon = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_16__*, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, i32* }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_14__ = type { i32, i32* }
%struct.TYPE_16__ = type { i64, i64, i64, i64, i64, i64, i64, i32, %struct.typhoon_interface }
%struct.typhoon_interface = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i32* }

@indexes = common dso_local global i32 0, align 4
@txLo = common dso_local global i32 0, align 4
@TXLO_ENTRIES = common dso_local global i32 0, align 4
@txHi = common dso_local global i32 0, align 4
@TXHI_ENTRIES = common dso_local global i32 0, align 4
@rxBuff = common dso_local global i32 0, align 4
@RXFREE_ENTRIES = common dso_local global i32 0, align 4
@rxLo = common dso_local global i32 0, align 4
@RX_ENTRIES = common dso_local global i32 0, align 4
@rxHi = common dso_local global i32 0, align 4
@cmd = common dso_local global i32 0, align 4
@COMMAND_RING_SIZE = common dso_local global i32 0, align 4
@resp = common dso_local global i32 0, align 4
@RESPONSE_RING_SIZE = common dso_local global i32 0, align 4
@zeroWord = common dso_local global i32 0, align 4
@TYPHOON_REG_TX_LO_READY = common dso_local global i32 0, align 4
@TYPHOON_REG_TX_HI_READY = common dso_local global i32 0, align 4
@Sleeping = common dso_local global i32 0, align 4
@TYPHOON_OFFLOAD_IP_CHKSUM = common dso_local global i32 0, align 4
@TYPHOON_OFFLOAD_TCP_CHKSUM = common dso_local global i32 0, align 4
@TYPHOON_OFFLOAD_UDP_CHKSUM = common dso_local global i32 0, align 4
@TSO_OFFLOAD_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.typhoon*)* @typhoon_init_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @typhoon_init_interface(%struct.typhoon* %0) #0 {
  %2 = alloca %struct.typhoon*, align 8
  %3 = alloca %struct.typhoon_interface*, align 8
  %4 = alloca i32, align 4
  store %struct.typhoon* %0, %struct.typhoon** %2, align 8
  %5 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %6 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %5, i32 0, i32 8
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 8
  store %struct.typhoon_interface* %8, %struct.typhoon_interface** %3, align 8
  %9 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %10 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %9, i32 0, i32 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %12 = call i32 @memset(%struct.TYPE_16__* %11, i32 0, i32 4)
  %13 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %14 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @indexes, align 4
  %17 = call i32 @shared_offset(i32 %16)
  %18 = add nsw i32 %15, %17
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i8* @cpu_to_le32(i32 %19)
  %21 = load %struct.typhoon_interface*, %struct.typhoon_interface** %3, align 8
  %22 = getelementptr inbounds %struct.typhoon_interface, %struct.typhoon_interface* %21, i32 0, i32 15
  store i8* %20, i8** %22, align 8
  %23 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %24 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @txLo, align 4
  %27 = call i32 @shared_offset(i32 %26)
  %28 = add nsw i32 %25, %27
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i8* @cpu_to_le32(i32 %29)
  %31 = load %struct.typhoon_interface*, %struct.typhoon_interface** %3, align 8
  %32 = getelementptr inbounds %struct.typhoon_interface, %struct.typhoon_interface* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* @TXLO_ENTRIES, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = call i8* @cpu_to_le32(i32 %36)
  %38 = load %struct.typhoon_interface*, %struct.typhoon_interface** %3, align 8
  %39 = getelementptr inbounds %struct.typhoon_interface, %struct.typhoon_interface* %38, i32 0, i32 14
  store i8* %37, i8** %39, align 8
  %40 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %41 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @txHi, align 4
  %44 = call i32 @shared_offset(i32 %43)
  %45 = add nsw i32 %42, %44
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i8* @cpu_to_le32(i32 %46)
  %48 = load %struct.typhoon_interface*, %struct.typhoon_interface** %3, align 8
  %49 = getelementptr inbounds %struct.typhoon_interface, %struct.typhoon_interface* %48, i32 0, i32 13
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* @TXHI_ENTRIES, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 4
  %53 = trunc i64 %52 to i32
  %54 = call i8* @cpu_to_le32(i32 %53)
  %55 = load %struct.typhoon_interface*, %struct.typhoon_interface** %3, align 8
  %56 = getelementptr inbounds %struct.typhoon_interface, %struct.typhoon_interface* %55, i32 0, i32 12
  store i8* %54, i8** %56, align 8
  %57 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %58 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @rxBuff, align 4
  %61 = call i32 @shared_offset(i32 %60)
  %62 = add nsw i32 %59, %61
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i8* @cpu_to_le32(i32 %63)
  %65 = load %struct.typhoon_interface*, %struct.typhoon_interface** %3, align 8
  %66 = getelementptr inbounds %struct.typhoon_interface, %struct.typhoon_interface* %65, i32 0, i32 11
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* @RXFREE_ENTRIES, align 4
  %68 = sext i32 %67 to i64
  %69 = mul i64 %68, 4
  %70 = trunc i64 %69 to i32
  %71 = call i8* @cpu_to_le32(i32 %70)
  %72 = load %struct.typhoon_interface*, %struct.typhoon_interface** %3, align 8
  %73 = getelementptr inbounds %struct.typhoon_interface, %struct.typhoon_interface* %72, i32 0, i32 10
  store i8* %71, i8** %73, align 8
  %74 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %75 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @rxLo, align 4
  %78 = call i32 @shared_offset(i32 %77)
  %79 = add nsw i32 %76, %78
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = call i8* @cpu_to_le32(i32 %80)
  %82 = load %struct.typhoon_interface*, %struct.typhoon_interface** %3, align 8
  %83 = getelementptr inbounds %struct.typhoon_interface, %struct.typhoon_interface* %82, i32 0, i32 9
  store i8* %81, i8** %83, align 8
  %84 = load i32, i32* @RX_ENTRIES, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 %85, 4
  %87 = trunc i64 %86 to i32
  %88 = call i8* @cpu_to_le32(i32 %87)
  %89 = load %struct.typhoon_interface*, %struct.typhoon_interface** %3, align 8
  %90 = getelementptr inbounds %struct.typhoon_interface, %struct.typhoon_interface* %89, i32 0, i32 8
  store i8* %88, i8** %90, align 8
  %91 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %92 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @rxHi, align 4
  %95 = call i32 @shared_offset(i32 %94)
  %96 = add nsw i32 %93, %95
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = call i8* @cpu_to_le32(i32 %97)
  %99 = load %struct.typhoon_interface*, %struct.typhoon_interface** %3, align 8
  %100 = getelementptr inbounds %struct.typhoon_interface, %struct.typhoon_interface* %99, i32 0, i32 7
  store i8* %98, i8** %100, align 8
  %101 = load i32, i32* @RX_ENTRIES, align 4
  %102 = sext i32 %101 to i64
  %103 = mul i64 %102, 4
  %104 = trunc i64 %103 to i32
  %105 = call i8* @cpu_to_le32(i32 %104)
  %106 = load %struct.typhoon_interface*, %struct.typhoon_interface** %3, align 8
  %107 = getelementptr inbounds %struct.typhoon_interface, %struct.typhoon_interface* %106, i32 0, i32 6
  store i8* %105, i8** %107, align 8
  %108 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %109 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @cmd, align 4
  %112 = call i32 @shared_offset(i32 %111)
  %113 = add nsw i32 %110, %112
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* %4, align 4
  %115 = call i8* @cpu_to_le32(i32 %114)
  %116 = load %struct.typhoon_interface*, %struct.typhoon_interface** %3, align 8
  %117 = getelementptr inbounds %struct.typhoon_interface, %struct.typhoon_interface* %116, i32 0, i32 5
  store i8* %115, i8** %117, align 8
  %118 = load i32, i32* @COMMAND_RING_SIZE, align 4
  %119 = call i8* @cpu_to_le32(i32 %118)
  %120 = load %struct.typhoon_interface*, %struct.typhoon_interface** %3, align 8
  %121 = getelementptr inbounds %struct.typhoon_interface, %struct.typhoon_interface* %120, i32 0, i32 4
  store i8* %119, i8** %121, align 8
  %122 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %123 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @resp, align 4
  %126 = call i32 @shared_offset(i32 %125)
  %127 = add nsw i32 %124, %126
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* %4, align 4
  %129 = call i8* @cpu_to_le32(i32 %128)
  %130 = load %struct.typhoon_interface*, %struct.typhoon_interface** %3, align 8
  %131 = getelementptr inbounds %struct.typhoon_interface, %struct.typhoon_interface* %130, i32 0, i32 3
  store i8* %129, i8** %131, align 8
  %132 = load i32, i32* @RESPONSE_RING_SIZE, align 4
  %133 = call i8* @cpu_to_le32(i32 %132)
  %134 = load %struct.typhoon_interface*, %struct.typhoon_interface** %3, align 8
  %135 = getelementptr inbounds %struct.typhoon_interface, %struct.typhoon_interface* %134, i32 0, i32 2
  store i8* %133, i8** %135, align 8
  %136 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %137 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @zeroWord, align 4
  %140 = call i32 @shared_offset(i32 %139)
  %141 = add nsw i32 %138, %140
  store i32 %141, i32* %4, align 4
  %142 = load i32, i32* %4, align 4
  %143 = call i8* @cpu_to_le32(i32 %142)
  %144 = load %struct.typhoon_interface*, %struct.typhoon_interface** %3, align 8
  %145 = getelementptr inbounds %struct.typhoon_interface, %struct.typhoon_interface* %144, i32 0, i32 1
  store i8* %143, i8** %145, align 8
  %146 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %147 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %146, i32 0, i32 8
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 7
  %150 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %151 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %150, i32 0, i32 14
  store i32* %149, i32** %151, align 8
  %152 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %153 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %152, i32 0, i32 8
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 6
  %156 = load i64, i64* %155, align 8
  %157 = inttoptr i64 %156 to i32*
  %158 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %159 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %158, i32 0, i32 7
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 1
  store i32* %157, i32** %160, align 8
  %161 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %162 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %161, i32 0, i32 8
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 5
  %165 = load i64, i64* %164, align 8
  %166 = inttoptr i64 %165 to i32*
  %167 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %168 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %167, i32 0, i32 6
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 1
  store i32* %166, i32** %169, align 8
  %170 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %171 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %170, i32 0, i32 8
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 4
  %174 = load i64, i64* %173, align 8
  %175 = inttoptr i64 %174 to i32*
  %176 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %177 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %176, i32 0, i32 13
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  store i32* %175, i32** %178, align 8
  %179 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %180 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %179, i32 0, i32 8
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = inttoptr i64 %183 to i32*
  %185 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %186 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %185, i32 0, i32 12
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  store i32* %184, i32** %187, align 8
  %188 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %189 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %188, i32 0, i32 8
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = inttoptr i64 %192 to i32*
  %194 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %195 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %194, i32 0, i32 11
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 0
  store i32* %193, i32** %196, align 8
  %197 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %198 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %197, i32 0, i32 8
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = inttoptr i64 %201 to i32*
  %203 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %204 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %203, i32 0, i32 10
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 0
  store i32* %202, i32** %205, align 8
  %206 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %207 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %206, i32 0, i32 8
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = inttoptr i64 %210 to i32*
  %212 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %213 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %212, i32 0, i32 9
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 0
  store i32* %211, i32** %214, align 8
  %215 = load i32, i32* @TYPHOON_REG_TX_LO_READY, align 4
  %216 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %217 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %216, i32 0, i32 7
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 0
  store i32 %215, i32* %218, align 8
  %219 = load i32, i32* @TYPHOON_REG_TX_HI_READY, align 4
  %220 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %221 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %220, i32 0, i32 6
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 0
  store i32 %219, i32* %222, align 8
  %223 = load %struct.typhoon_interface*, %struct.typhoon_interface** %3, align 8
  %224 = getelementptr inbounds %struct.typhoon_interface, %struct.typhoon_interface* %223, i32 0, i32 0
  %225 = load i8*, i8** %224, align 8
  %226 = call i32 @le32_to_cpu(i8* %225)
  %227 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %228 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %227, i32 0, i32 5
  store i32 %226, i32* %228, align 4
  %229 = load i32, i32* @Sleeping, align 4
  %230 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %231 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %230, i32 0, i32 4
  store i32 %229, i32* %231, align 8
  %232 = call i32 (...) @smp_wmb()
  %233 = load i32, i32* @TYPHOON_OFFLOAD_IP_CHKSUM, align 4
  %234 = load i32, i32* @TYPHOON_OFFLOAD_TCP_CHKSUM, align 4
  %235 = or i32 %233, %234
  %236 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %237 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %236, i32 0, i32 1
  store i32 %235, i32* %237, align 4
  %238 = load i32, i32* @TYPHOON_OFFLOAD_UDP_CHKSUM, align 4
  %239 = load i32, i32* @TSO_OFFLOAD_ON, align 4
  %240 = or i32 %238, %239
  %241 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %242 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = or i32 %243, %240
  store i32 %244, i32* %242, align 4
  %245 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %246 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %245, i32 0, i32 3
  %247 = call i32 @spin_lock_init(i32* %246)
  %248 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %249 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %248, i32 0, i32 2
  %250 = call i32 @spin_lock_init(i32* %249)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @shared_offset(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
